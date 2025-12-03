import 'package:flutter/material.dart';

import '../../db/api_from_server.dart';
import '../../db/database.dart';
import '../../helpers/listify_stream.dart';
import '../../schemaless_proto/application_services/v1/entity.pb.dart';
import '../errors/error_screen.dart';

class EntityHistoryScreen extends StatelessWidget {
  const EntityHistoryScreen({
    super.key,
    required this.server,
    required this.entity,
  });
  final ServerInfoData server;
  final String entity;
  ApplicationApiFromServerInfo get api => ApplicationApiFromServerInfo(server);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: listifyStream(
        api.entityClient.streamEntityHistory(
          StreamEntityHistoryRequest(
            params: EntityHistoryRequestParams(
              entityName: EntityHistoryRequestEntityNameParam(in_1: [entity]),
            ),
            order: [
              EntityHistoryRequestOrder(
                field_1:
                    EntityHistoryOrderField
                        .ENTITY_HISTORY_ORDER_FIELD_CREATED_AT,
                value: EntityHistoryOrderValue.ENTITY_HISTORY_ORDER_VALUE_DESC,
              ),
            ],
          ),
        ),
      ),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorScreen(error: snapshot.error!, scaffold: true);
        }
        final entityData = snapshot.data;
        return Scaffold(
          appBar: AppBar(title: Text(entity)),
          body:
              entityData == null || entityData.isEmpty
                  ? Center(child: Text("No data found"))
                  : ListView(
                    children:
                        entityData
                            .map(
                              (res) => ListTile(
                                isThreeLine: true,
                                title: Text(res.history.action.toString()),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Timestamp: ${res.history.createdAt.toString()}",
                                    ),
                                    Text("Entity ID: ${res.history.entityId}"),
                                    Text(
                                      String.fromCharCodes(res.history.payload),
                                    ),
                                  ],
                                ),
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute<void>(
                                      builder:
                                          (context) => Scaffold(
                                            appBar: AppBar(
                                              title: Text(
                                                res.history.createdAt
                                                    .toString(),
                                              ),
                                            ),
                                            body: Center(
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 10,
                                                ),
                                                child: ListView(
                                                  children: [
                                                    Text(
                                                      "Entity ID: ${res.history.entityId}",
                                                    ),
                                                    Text(
                                                      "Action: ${res.history.action}",
                                                    ),
                                                    Text(
                                                      "Timestamp: ${res.history.createdAt.toString()}",
                                                    ),
                                                    Text(
                                                      "Created At: ${res.history.createdAt}",
                                                    ),
                                                    Text(
                                                      "Payload: ${String.fromCharCodes(res.history.payload)}",
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
