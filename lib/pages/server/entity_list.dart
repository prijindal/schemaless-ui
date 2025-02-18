import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:schemaless_openapi/schemaless_openapi.dart';

import '../../db/api_from_server.dart';
import '../../db/database.dart';
import '../errors/error_screen.dart';
import '../loading.dart';

class EntitesList extends StatelessWidget {
  const EntitesList({super.key, required this.server});

  final ServerInfoData server;
  ApiFromServerInfo get api => ApiFromServerInfo(server);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: api.entityApi.getEntities(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorScreen(error: snapshot.error!, scaffold: false);
        }
        if (snapshot.hasData == false) {
          return LoadingScreen(scaffold: false);
        }
        final entities = snapshot.requireData.data;
        if (entities == null || entities.isEmpty) {
          return Center(child: Text("No Entities found"));
        }
        return ListView(
          children:
              entities
                  .map(
                    (entity) => ListTile(
                      title: Text(entity),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute<void>(
                            builder:
                                (context) => _EntityHistoryScreen(
                                  server: server,
                                  entity: entity,
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

class _EntityHistoryScreen extends StatelessWidget {
  const _EntityHistoryScreen({required this.server, required this.entity});
  final ServerInfoData server;
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
      future: api.entityApi.searchEntitiesHistory(
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
        if (entityData.isEmpty) {
          return Center(child: Text("No data found"));
        }
        return Scaffold(
          appBar: AppBar(title: Text(entity)),
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
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 10,
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
