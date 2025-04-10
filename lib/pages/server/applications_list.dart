import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uuid/uuid.dart';

import '../../db/api_from_server.dart';
import '../../db/database.dart';
import '../../helpers/listify_stream.dart';
import '../../helpers/parse_errors.dart';
import '../../schemaless_proto/google/protobuf/empty.pb.dart';
import '../../schemaless_proto/google/protobuf/timestamp.pb.dart';
import '../../schemaless_proto/management/services.pb.dart';
import '../../schemaless_proto/types/entity.pb.dart';
import '../../schemaless_proto/types/login.pb.dart';
import '../errors/error_screen.dart';
import 'entity_list.dart';

class ApplicationsList extends StatelessWidget {
  const ApplicationsList({super.key, required this.server});

  final ServerInfoData server;
  ApiFromServerInfo get api => ApiFromServerInfo(server);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: listifyStream(api.applicationClient.listApplications(Empty())),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorScreen(error: snapshot.error!, scaffold: false);
        }
        final applications = snapshot.data;
        if (applications == null || applications.isEmpty) {
          return Center(child: Text("No Applications found"));
        }
        return ListView(
          children:
              applications
                  .map(
                    (application) => ListTile(
                      title: Text(application.name),
                      subtitle: Text(application.iD),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute<void>(
                            builder:
                                (context) => _ApplicationScreen(
                                  server: server,
                                  application: application,
                                ),
                          ),
                        );
                      },
                    ),
                  )
                  .toList(),
        );
      },
    );
  }
}

class _ApplicationScreen extends StatefulWidget {
  const _ApplicationScreen({required this.server, required this.application});
  final ServerInfoData server;
  final Application application;

  @override
  State<_ApplicationScreen> createState() => _ApplicationScreenState();
}

class _ApplicationScreenState extends State<_ApplicationScreen> {
  int currentPageIndex = 0;
  ApiFromServerInfo get api => ApiFromServerInfo(widget.server);

  Widget _buildUsersList() {
    return StreamBuilder(
      stream: listifyStream(
        api.applicationUserClient.listUsers(
          ListUsersRequest(applicationID: widget.application.iD),
        ),
      ),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorScreen(error: snapshot.error!, scaffold: false);
        }
        final users = snapshot.data;
        return (users == null || users.isEmpty)
            ? Center(child: Text("No Users found"))
            : ListView(
              children:
                  users
                      .map(
                        (user) => ListTile(
                          title: Text(user.email),
                          subtitle: Text(
                            "status: ${user.status}, createdAt: ${user.createdAt}",
                          ),
                          trailing: PopupMenuButton(
                            itemBuilder:
                                (context) => [
                                  PopupMenuItem<void>(
                                    child: Text(
                                      user.status == UserStatus.UserActivated
                                          ? "Deactivate"
                                          : "Activated",
                                    ),
                                    onTap: () async {
                                      try {
                                        await api.applicationUserClient
                                            .toggleUserApproval(
                                              ApplicationToggleUserApprovalRequest(
                                                applicationID:
                                                    widget.application.iD,
                                                iD: user.iD,
                                                approve:
                                                    user.status !=
                                                    UserStatus.UserActivated,
                                              ),
                                            );
                                        ScaffoldMessenger.of(
                                          // ignore: use_build_context_synchronously
                                          context,
                                        ).showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              "User ${user.status == UserStatus.UserActivated ? "Deactivate" : "Activated"}",
                                            ),
                                          ),
                                        );
                                      } on Exception catch (e) {
                                        // ignore: use_build_context_synchronously
                                        await parseErrors(context, e);
                                      }
                                    },
                                  ),
                                ],
                          ),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute<void>(
                                builder:
                                    (context) => _ApplicationUserScreen(
                                      server: widget.server,
                                      application: widget.application,
                                      user: user,
                                    ),
                              ),
                            );
                          },
                        ),
                      )
                      .toList(),
            );
      },
    );
  }

  Widget _buildDomainsList() {
    return StreamBuilder(
      stream: listifyStream(
        api.applicationDomainClient.listApplicationDomains(
          ListApplicationDomainRequest(applicationID: widget.application.iD),
        ),
      ),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorScreen(error: snapshot.error!, scaffold: false);
        }
        final domains = snapshot.data;
        return (domains == null || domains.isEmpty)
            ? Center(child: Text("No Domains found"))
            : ListView(
              children:
                  domains
                      .map(
                        (domain) => ListTile(
                          title: Text(domain.domainName),
                          subtitle: Text(
                            "status: ${domain.status}, createdAt: ${domain.createdAt}",
                          ),
                          trailing: PopupMenuButton(
                            itemBuilder:
                                (context) => [
                                  PopupMenuItem<void>(
                                    child: Text("Verify"),
                                    onTap: () async {
                                      try {
                                        await api.applicationDomainClient
                                            .verifyDomain(
                                              GetDomainRequest(
                                                domainID: domain.iD,
                                              ),
                                            );
                                        ScaffoldMessenger.of(
                                          // ignore: use_build_context_synchronously
                                          context,
                                        ).showSnackBar(
                                          SnackBar(
                                            content: Text("Domain verified"),
                                          ),
                                        );
                                      } on Exception catch (e) {
                                        await parseErrors(
                                          // ignore: use_build_context_synchronously
                                          context,
                                          e,
                                        );
                                      }
                                    },
                                  ),
                                ],
                          ),
                        ),
                      )
                      .toList(),
            );
      },
    );
  }

  Future<void> _addUser() async {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    await showDialog<String?>(
      context: context,
      builder:
          (context) => SimpleDialog(
            title: Text("Insert Application User"),
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(label: Text("Email")),
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(label: Text("Password")),
              ),
              ElevatedButton(
                child: Text("Add"),
                onPressed:
                    () => Navigator.of(context).pop(emailController.text),
              ),
            ],
          ),
    );
    if (emailController.text.isNotEmpty) {
      try {
        await api.applicationUserClient.registerUser(
          ApplicationUserRegisterRequest(
            applicationID: widget.application.iD,
            email: emailController.text,
            password: passwordController.text,
          ),
        );
      } on Exception catch (e) {
        // ignore: use_build_context_synchronously
        parseErrors(context, e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.application.name),
        actions: [
          PopupMenuButton(
            itemBuilder:
                (context) => [
                  PopupMenuItem<void>(
                    child: Text("Open Web UI"),
                    onTap: () async {
                      Clipboard.setData(
                        ClipboardData(text: widget.application.iD),
                      );
                    },
                  ),
                ],
          ),
        ],
      ),
      floatingActionButton:
          currentPageIndex == 0
              ? FloatingActionButton(
                onPressed: () => _addUser(),
                tooltip: "Add Entity",
                child: Icon(Icons.add),
              )
              : null,
      body: [
        _buildUsersList(),
        _buildDomainsList(),
      ].elementAt(currentPageIndex),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: [
          NavigationDestination(icon: Icon(Icons.people), label: "Users"),
          NavigationDestination(icon: Icon(Icons.domain), label: "Domains"),
        ],
      ),
    );
  }
}

class _ApplicationUserScreen extends StatelessWidget {
  const _ApplicationUserScreen({
    required this.server,
    required this.application,
    required this.user,
  });
  final ServerInfoData server;
  final Application application;
  final ApplicationUser user;
  ApiFromServerInfo get api => ApiFromServerInfo(server);

  Future<void> _addEntity(BuildContext context) async {
    final textController = TextEditingController();
    final name = await showDialog<String?>(
      context: context,
      builder:
          (context) => SimpleDialog(
            title: Text("Insert Random Data"),
            children: [
              TextField(
                controller: textController,
                decoration: InputDecoration(label: Text("Entity name")),
              ),
              ElevatedButton(
                child: Text("Add"),
                onPressed: () => Navigator.of(context).pop(textController.text),
              ),
            ],
          ),
    );
    if (name != null) {
      try {
        await api.entityClient.entityAction(
          AppUserEntityActionRequest(
            applicationID: application.iD,
            appUserID: user.iD,
            entityActionRequest: EntityActionRequest(
              hostID: Uuid().v4(),
              actionId: Uuid().v4(),
              entityName: name,
              action: EntityAction.CREATE,
              createdAt: Timestamp.fromDateTime(DateTime.now()),
              entityId: Uuid().v4(),
              payload:
                  jsonEncode({
                    "title": "Sample title",
                    "description": Uuid().v4(),
                  }).codeUnits,
              requestID: Uuid().v4(),
            ),
          ),
        );
      } on Exception catch (e) {
        // ignore: use_build_context_synchronously
        parseErrors(context, e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: listifyStream(
        api.entityClient.listEntityTypes(
          ListEntityTypesRequest(
            appUserID: user.iD,
            applicationID: application.iD,
          ),
        ),
      ),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorScreen(error: snapshot.error!, scaffold: true);
        }
        final entities = snapshot.data;
        return Scaffold(
          appBar: AppBar(
            title: Text(user.email),
            actions: [
              PopupMenuButton(
                itemBuilder:
                    (context) => [
                      PopupMenuItem<void>(
                        child: Text("Generate Token"),
                        onTap: () async {
                          try {
                            final response = await api.applicationUserClient
                                .generateKey(
                                  ApplicationUserGetRequest(
                                    applicationID: application.iD,
                                    iD: user.iD,
                                  ),
                                );
                            final jwtToken = response.token;
                            await showDialog<void>(
                              // ignore: use_build_context_synchronously
                              context: context,
                              builder:
                                  (context) => SimpleDialog(
                                    title: Text("New token generated"),
                                    children: [
                                      Text(jwtToken),
                                      ElevatedButton(
                                        onPressed: () {
                                          Clipboard.setData(
                                            ClipboardData(text: jwtToken),
                                          );
                                        },
                                        child: Text("Copy to clipboard"),
                                      ),
                                    ],
                                  ),
                            );
                          } on Exception catch (e) {
                            // ignore: use_build_context_synchronously
                            await parseErrors(context, e);
                          }
                        },
                      ),
                      PopupMenuItem<void>(
                        child: Text("Revoke Keys"),
                        onTap: () async {
                          try {
                            await api.applicationUserClient.revokeKey(
                              ApplicationUserGetRequest(
                                applicationID: application.iD,
                                iD: user.iD,
                              ),
                            );
                            // ignore: use_build_context_synchronously
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("All keys are revoked")),
                            );
                          } on Exception catch (e) {
                            // ignore: use_build_context_synchronously
                            await parseErrors(context, e);
                          }
                        },
                      ),
                    ],
              ),
            ],
          ),
          body:
              entities == null || entities.isEmpty
                  ? Center(child: Text("No Entities found"))
                  : ListView(
                    children:
                        entities
                            .map(
                              (entity) => ListTile(
                                title: Text(entity.entityType),
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute<void>(
                                      builder:
                                          (context) => EntityHistoryScreen(
                                            server: server,
                                            application: application,
                                            user: user,
                                            entity: entity.entityType,
                                          ),
                                    ),
                                  );
                                },
                              ),
                            )
                            .toList(),
                  ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => _addEntity(context),
            tooltip: "Add Entity",
            child: Icon(Icons.add),
          ),
        );
      },
    );
  }
}
