import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:schemaless_openapi/schemaless_openapi.dart';

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
      future: api.managementApplicationApi.listApplications(),
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

class _ApplicationScreen extends StatelessWidget {
  const _ApplicationScreen({required this.server, required this.application});
  final ServerInfoData server;
  final Application application;
  ApiFromServerInfo get api => ApiFromServerInfo(server);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: api.managementApplicationUserApi.listUsers(
        applicationId: application.id,
      ),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorScreen(error: snapshot.error!, scaffold: true);
        }
        if (snapshot.hasData == false) {
          return LoadingScreen(scaffold: true);
        }
        final users = snapshot.requireData.data;
        return Scaffold(
          appBar: AppBar(
            title: Text(application.name),
            actions: [
              PopupMenuButton(
                itemBuilder:
                    (context) => [
                      PopupMenuItem<void>(
                        child: Text("Generate Token"),
                        onTap: () async {
                          try {
                            final response = await api.managementApplicationApi
                                .generateKey(applicationId: application.id);
                            if (response.data == null ||
                                response.data!.isString == false) {
                              throw DioException.badResponse(
                                requestOptions: response.requestOptions,
                                statusCode: 404,
                                response: response,
                              );
                            }
                            final jwtToken = response.data!.asString;
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
                            final response = await api.managementApplicationApi
                                .revokeKeys(applicationId: application.id);
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
              (users == null || users.isEmpty)
                  ? Center(child: Text("No Users found"))
                  : ListView(
                    children:
                        users
                            .map(
                              (user) => ListTile(
                                title: Text(user.username),
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
                                                await api
                                                    .managementApplicationUserApi
                                                    .approveUser(
                                                      applicationId:
                                                          application.id,
                                                      appUserId: user.id,
                                                    );
                                              } else {
                                                await api
                                                    .managementApplicationUserApi
                                                    .disableUser(
                                                      applicationId:
                                                          application.id,
                                                      appUserId: user.id,
                                                    );
                                              }
                                              // ignore: use_build_context_synchronously
                                              ScaffoldMessenger.of(
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
                                            server: server,
                                            application: application,
                                            user: user,
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
            title: Text(user.username),
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
