import 'package:flutter/material.dart';
import 'package:schemaless_openapi/schemaless_openapi.dart';

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
    // TODO: Bottom scaffold navigation with app keys, entity data and entity history
    return Scaffold(
      appBar: AppBar(title: Text(project.name)),
      body: ListView(
        children: [
          ListTile(title: Text("Project ID"), subtitle: Text(project.id)),
        ],
      ),
    );
  }
}
