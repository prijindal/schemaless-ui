import 'package:flutter/material.dart';

import '../../db/api_from_server.dart';
import '../../db/database.dart';
import '../../helpers/listify_stream.dart';
import '../../schemaless_proto/types/entity.pb.dart';
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
          SearchEntityHistoryRequest(
            params: EntityHistoryRequestParams(
              entityName: EntityHistoryRequestEntityNameParam(in_1: [entity]),
            ),
            order: [
              EntityHistoryRequestOrder(
                field_1: EntityHistoryOrderField.CreatedAt,
                value: EntityHistoryOrderValue.DESC,
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
                              (data) => ListTile(
                                isThreeLine: true,
                                title: Text(data.action.toString()),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Timestamp: ${data.createdAt.toString()}",
                                    ),
                                    Text("Entity ID: ${data.entityID}"),
                                    Text(String.fromCharCodes(data.payload)),
                                  ],
                                ),
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute<void>(
                                      builder:
                                          (context) => Scaffold(
                                            appBar: AppBar(
                                              title: Text(
                                                data.createdAt.toString(),
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
                                                      "Entity ID: ${data.entityID}",
                                                    ),
                                                    Text(
                                                      "Action: ${data.action}",
                                                    ),
                                                    Text(
                                                      "Timestamp: ${data.createdAt.toString()}",
                                                    ),
                                                    Text(
                                                      "Created At: ${data.createdAt}",
                                                    ),
                                                    Text(
                                                      "Payload: ${String.fromCharCodes(data.payload)}",
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
