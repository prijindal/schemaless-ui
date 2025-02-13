import 'package:flutter/material.dart';

import '../../db/api_from_server.dart';
import '../../db/database.dart';
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
          return ErrorScreen(error: snapshot.error as Error, scaffold: false);
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
              onTap: () {
                Navigator.of(
                  context,
                ).pushNamed('/server/$server.id/project/${project.id}');
              },
            );
          },
        );
      },
    );
  }
}
