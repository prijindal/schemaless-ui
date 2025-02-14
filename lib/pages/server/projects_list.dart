import 'dart:convert';
import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:schemaless_openapi/schemaless_openapi.dart';

import '../../db/api_from_server.dart';
import '../../db/database.dart';
import '../../helpers/parse_dio_errors.dart';
import '../errors/error_screen.dart';
import '../loading.dart';

class ProjectsList extends StatelessWidget {
  const ProjectsList({super.key, required this.server});
  final ServerInfoData server;

  ApiFromServerInfo get api => ApiFromServerInfo(server);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: api.projectApi.listProjects(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorScreen(error: snapshot.error!, scaffold: false);
        }
        if (snapshot.hasData == false || snapshot.requireData.data == null) {
          return LoadingScreen(scaffold: false);
        }
        return ListView.builder(
          itemCount: snapshot.requireData.data!.length,
          itemBuilder: (context, index) {
            final project = snapshot.requireData.data![index];
            return ListTile(
              title: Text(project.name),
              subtitle: Text("Created At: ${project.createdAt}"),
              trailing: PopupMenuButton(
                itemBuilder:
                    (context) => [
                      PopupMenuItem<void>(
                        child: Text("Generate Token"),
                        onTap: () async {
                          try {
                            final response = await api.projectApi.generateKey(
                              projectid: project.id,
                            );
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
                            final response = await api.projectApi.revokeKeys(
                              projectid: project.id,
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
                      PopupMenuItem<void>(
                        child: Text("Delete"),
                        onTap: () async {
                          try {
                            await api.projectApi.deleteProject(
                              projectid: project.id,
                            );
                            // ignore: use_build_context_synchronously
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Project Deleted")),
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
                        (context) =>
                            _ProjectScreen(project: project, server: server),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}

class _ProjectScreen extends StatelessWidget {
  const _ProjectScreen({required this.project, required this.server});

  final ServerInfoData server;
  final Project project;
  ApiFromServerInfo get api => ApiFromServerInfo(server);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: api.projectApi.getProjectEntities(projectid: project.id),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorScreen(error: snapshot.error!, scaffold: true);
        }
        if (snapshot.hasData == false || snapshot.requireData.data == null) {
          return LoadingScreen(scaffold: true);
        }
        return Scaffold(
          appBar: AppBar(title: Text(project.name)),
          body: ListView(
            children:
                snapshot.data!.data!
                    .map(
                      (entity) => ListTile(
                        title: Text(entity),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute<void>(
                              builder:
                                  (context) => _ProjectEntityHistoryScreen(
                                    project: project,
                                    server: server,
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

class _ProjectEntityHistoryScreen extends StatelessWidget {
  const _ProjectEntityHistoryScreen({
    required this.project,
    required this.server,
    required this.entity,
  });
  final ServerInfoData server;
  final Project project;
  final String entity;
  ApiFromServerInfo get api => ApiFromServerInfo(server);

  BuiltList<EntityHistoryRequest> _buildReqBody() {
    final entityHistoryRequest = EntityHistoryRequestBuilder();
    entityHistoryRequest.entityName = entity;
    entityHistoryRequest.order = MapBuilder();
    entityHistoryRequest.order.addAll({
      "timestamp": EntityHistoryRequestOrderEnum.desc,
    });
    entityHistoryRequest.params = EntityHistoryRequestParamsBuilder();
    return BuiltList<EntityHistoryRequest>([entityHistoryRequest.build()]);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: api.projectApi.searchProjectEntitiesHistory(
        projectid: project.id,
        entityHistoryRequest: _buildReqBody(),
      ),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorScreen(error: snapshot.error!, scaffold: true);
        }
        if (snapshot.hasData == false || snapshot.requireData.data == null) {
          return LoadingScreen(scaffold: true);
        }
        final entityData = snapshot.requireData.data!.first.data;
        return Scaffold(
          appBar: AppBar(title: Text(project.name)),
          body: ListView(
            children:
                entityData
                    .map(
                      (data) => ListTile(
                        isThreeLine: true,
                        title: Text(data.action),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Timestamp: ${data.timestamp.toString()}"),
                            Text("Entity ID: ${data.entityId}"),
                            Text(data.payload.toString()),
                          ],
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute<void>(
                              builder:
                                  (context) => Scaffold(
                                    appBar: AppBar(
                                      title: Text(data.timestamp.toString()),
                                    ),
                                    body: Center(
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 10,
                                        ),
                                        width: min(
                                          600,
                                          MediaQuery.of(context).size.width,
                                        ),
                                        child: ListView(
                                          children: [
                                            Text("Entity ID: ${data.entityId}"),
                                            Text("Action: ${data.action}"),
                                            Text(
                                              "Timestamp: ${data.timestamp.toString()}",
                                            ),
                                            Text(
                                              "Created At: ${data.createdAt}",
                                            ),
                                            Text("Host Id: ${data.hostId}"),
                                            Text(
                                              "Payload: ${JsonEncoder.withIndent("  ").convert(data.payload.value)}",
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
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
