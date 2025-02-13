import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../db/database.dart';
import '../loading.dart';

@RoutePage()
class ServerScreen extends StatelessWidget {
  const ServerScreen({super.key, @pathParam required this.serverId});

  final String serverId;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ServerInfoData>(
      future:
          GetIt.I<SharedDatabase>().managers.serverInfo
              .filter((f) => f.id.equals(serverId))
              .getSingle(),
      builder:
          (context, snapshot) =>
              snapshot.hasData == false
                  ? LoadingScreen()
                  : _ServerScreen(server: snapshot.requireData),
    );
  }
}

class _ServerScreen extends StatelessWidget {
  const _ServerScreen({required this.server});

  final ServerInfoData server;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(server.url)),
      body: Text("Server"),
    );
  }
}
