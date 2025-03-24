import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:schemaless_openapi/schemaless_openapi.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../db/api_from_server.dart';
import '../../db/database.dart';
import '../../helpers/parse_dio_errors.dart';
import '../errors/error_screen.dart';
import '../loading.dart';
import 'entity_list.dart';

class ApplicationsList extends StatelessWidget {
  const ApplicationsList({super.key, required this.server});

  final ServerInfoData server;
  ApiFromServerInfo get api => ApiFromServerInfo(server);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: api.managementApplicationApi.listApplications(
        limit: 1000,
        offset: 0,
      ),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorScreen(error: snapshot.error!, scaffold: false);
        }
        if (snapshot.hasData == false) {
          return LoadingScreen(scaffold: false);
        }
        final applications = snapshot.requireData.data;
        if (applications == null || applications.isEmpty) {
          return Center(child: Text("No Applications found"));
        }
        return ListView(
          children:
              applications
                  .map(
                    (application) => ListTile(
                      title: Text(application.name),
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
    return FutureBuilder(
      future: api.managementApplicationUserApi.listUsers(
        applicationId: widget.application.id,
      ),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorScreen(error: snapshot.error!, scaffold: false);
        }
        if (snapshot.hasData == false) {
          return LoadingScreen(scaffold: false);
        }
        final users = snapshot.requireData.data;
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
                                      user.status == UserStatus.ACTIVATED
                                          ? "Deactivate"
                                          : "Activated",
                                    ),
                                    onTap: () async {
                                      try {
                                        if (user.status !=
                                            UserStatus.ACTIVATED) {
                                          await api.managementApplicationUserApi
                                              .approveUser(
                                                applicationId:
                                                    widget.application.id,
                                                appUserId: user.id,
                                              );
                                        } else {
                                          await api.managementApplicationUserApi
                                              .disableUser(
                                                applicationId:
                                                    widget.application.id,
                                                appUserId: user.id,
                                              );
                                        }
                                        ScaffoldMessenger.of(
                                          // ignore: use_build_context_synchronously
                                          context,
                                        ).showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              "User ${user.status == UserStatus.ACTIVATED ? "Deactivate" : "Activated"}",
                                            ),
                                          ),
                                        );
                                      } on DioException catch (e) {
                                        // ignore: use_build_context_synchronously
                                        await parseDioErrors(context, e);
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
    return FutureBuilder(
      future: api.managementApplicationDomainApi.listDomains(
        applicationId: widget.application.id,
      ),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorScreen(error: snapshot.error!, scaffold: false);
        }
        if (snapshot.hasData == false) {
          return LoadingScreen(scaffold: false);
        }
        final domains = snapshot.requireData.data;
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
                                        await api.managementApplicationDomainApi
                                            .verifyDomain(
                                              applicationId:
                                                  widget.application.id,
                                              domainId: domain.id,
                                            );
                                        ScaffoldMessenger.of(
                                          // ignore: use_build_context_synchronously
                                          context,
                                        ).showSnackBar(
                                          SnackBar(
                                            content: Text("Domain verified"),
                                          ),
                                        );
                                      } on DioException catch (e) {
                                        await parseDioErrors(
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
                      launchUrl(
                        Uri.parse(
                          "${widget.server.url}/application/${widget.application.id}",
                        ),
                      );
                    },
                  ),
                ],
          ),
        ],
      ),
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
  final ListUsersResponse1 user;
  ApiFromServerInfo get api => ApiFromServerInfo(server);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: api.managementEntityApi.getEntities(
        applicationId: application.id,
        appUserId: user.id,
      ),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorScreen(error: snapshot.error!, scaffold: true);
        }
        if (snapshot.hasData == false) {
          return LoadingScreen(scaffold: true);
        }
        final entities = snapshot.requireData.data;
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
                            final response = await api
                                .managementApplicationUserApi
                                .generateKey(
                                  applicationId: application.id,
                                  appUserId: user.id,
                                );
                            if (response.data == null) {
                              throw DioException.badResponse(
                                requestOptions: response.requestOptions,
                                statusCode: 404,
                                response: response,
                              );
                            }
                            final jwtToken = response.data!;
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
                          } on DioException catch (e) {
                            // ignore: use_build_context_synchronously
                            await parseDioErrors(context, e);
                          }
                        },
                      ),
                      PopupMenuItem<void>(
                        child: Text("Revoke Keys"),
                        onTap: () async {
                          try {
                            final response = await api
                                .managementApplicationUserApi
                                .revokeKeys(
                                  applicationId: application.id,
                                  appUserId: user.id,
                                );
                            if (response.data == null) {
                              throw DioException.badResponse(
                                requestOptions: response.requestOptions,
                                statusCode: 404,
                                response: response,
                              );
                            }
                            // ignore: use_build_context_synchronously
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("All keys are revoked")),
                            );
                          } on DioException catch (e) {
                            // ignore: use_build_context_synchronously
                            await parseDioErrors(context, e);
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
                                title: Text(entity),
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute<void>(
                                      builder:
                                          (context) => EntityHistoryScreen(
                                            server: server,
                                            application: application,
                                            user: user,
                                            entity: entity,
                                          ),
                                    ),
                                  );
                                },
                              ),
                            )
                            .toList(),
                  ),
        );
      },
    );
  }
}
