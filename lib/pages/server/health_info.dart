import 'dart:convert';

import 'package:flutter/material.dart';

import '../../db/api_from_server.dart';
import '../../db/database.dart';
import '../errors/error_screen.dart';
import '../loading.dart';

class HealthInfo extends StatelessWidget {
  const HealthInfo({super.key, required this.server});
  final ServerInfoData server;

  ApiFromServerInfo get api => ApiFromServerInfo(server);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: api.healthApi.getCumulativeHealth(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorScreen(error: snapshot.error!, scaffold: false);
        }
        if (snapshot.hasData == false || snapshot.requireData.data == null) {
          return LoadingScreen(scaffold: false);
        }
        final data = snapshot.requireData.data!;
        return ListView(
          children: [
            ListTile(title: Text("DB"), subtitle: Text(data.db.toString())),
            ListTile(
              title: Text("Cache"),
              subtitle: Text(data.cache.toString()),
            ),
            ListTile(
              title: Text("Env"),
              subtitle: Text(
                JsonEncoder.withIndent("  ").convert(data.env.asMap),
              ),
            ),
            ListTile(
              title: Text("hostname"),
              subtitle: Text(data.os.hostname?.asString ?? "null"),
            ),
            ListTile(
              title: Text("host time"),
              subtitle: Text(data.os.time.toString()),
            ),
            ListTile(
              title: Text("host time"),
              subtitle: Text(data.os.uptime?.asNum.toString() ?? "null"),
            ),
          ],
        );
      },
    );
  }
}
