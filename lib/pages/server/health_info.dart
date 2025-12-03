import 'package:flutter/material.dart';

import '../../db/api_from_server.dart';
import '../../db/database.dart';
import '../../schemaless_proto/management_services/v1/services.pb.dart';
import '../errors/error_screen.dart';
import '../loading.dart';

class HealthInfo extends StatelessWidget {
  const HealthInfo({super.key, required this.server});
  final ServerInfoData server;

  ManagementApiFromServerInfo get api => ManagementApiFromServerInfo(server);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: api.healthClient.cumulativeHealth(CumulativeHealthRequest()),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorScreen(error: snapshot.error!, scaffold: false);
        }
        if (snapshot.hasData == false) {
          return LoadingScreen(scaffold: false);
        }
        final data = snapshot.requireData;
        return ListView(
          children: [
            ListTile(title: Text("DB"), subtitle: Text(data.db.toString())),
            ListTile(
              title: Text("PubSub"),
              subtitle: Text(data.pubSub.toString()),
            ),
            ListTile(
              title: Text("Cache"),
              subtitle: Text(data.cache.toString()),
            ),
            ListTile(title: Text("hostname"), subtitle: Text(data.hostname)),
            ListTile(
              title: Text("host time"),
              subtitle: Text(data.currentTime.toString()),
            ),
            ListTile(
              title: Text("uptime"),
              subtitle: Text(data.uptime.toString()),
            ),
          ],
        );
      },
    );
  }
}
