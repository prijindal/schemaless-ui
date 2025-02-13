import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:schemaless_openapi/schemaless_openapi.dart';

import '../../db/api_from_server.dart';
import '../../db/database.dart';
import '../errors/error_screen.dart';
import '../loading.dart';
import 'health_info.dart';
import 'projects_list.dart';
import 'users_list.dart';

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
                  ? LoadingScreen(scaffold: true)
                  : _ServerScreen(server: snapshot.requireData),
    );
  }
}

class _ServerScreen extends StatelessWidget {
  const _ServerScreen({required this.server});

  final ServerInfoData server;
  ApiFromServerInfo get api => ApiFromServerInfo(server);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: api.authApi.verifyUserAuth(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorScreen(error: snapshot.error!, scaffold: true);
        }
        if (snapshot.hasData == false || snapshot.requireData.data == null) {
          return LoadingScreen(scaffold: true);
        }
        return _ServerScreenScaffold(
          server: server,
          isAdmin: snapshot.requireData.data?.isAdmin ?? false,
        );
      },
    );
  }
}

class _ServerScreenScaffold extends StatefulWidget {
  const _ServerScreenScaffold({required this.server, required this.isAdmin});

  final ServerInfoData server;
  final bool isAdmin;

  @override
  State<_ServerScreenScaffold> createState() => _ServerScreenScaffoldState();
}

class _ServerScreenScaffoldState extends State<_ServerScreenScaffold> {
  int currentPageIndex = 0;
  ApiFromServerInfo get api => ApiFromServerInfo(widget.server);

  Future<void> _newProjectDialog() async {
    final TextEditingController textEditingController = TextEditingController();
    final projectName = await showDialog<String?>(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text("Create new project"),
            content: TextField(
              controller: textEditingController,
              decoration: InputDecoration(labelText: "Project name"),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text("Cancel"),
              ),
              TextButton(
                onPressed: () async {
                  Navigator.of(context).pop(textEditingController.text);
                },
                child: Text("Create"),
              ),
            ],
          ),
    );
    if (projectName != null && projectName.isNotEmpty) {
      final body = CreateProjectRequestBuilder();
      body.name = projectName;
      try {
        await api.projectApi.createProjects(createProjectRequest: body.build());
        ScaffoldMessenger.of(
          // ignore: use_build_context_synchronously
          context,
        ).showSnackBar(SnackBar(content: Text("Project Created $projectName")));
      } catch (e) {
        debugPrint(e.toString());
        ScaffoldMessenger.of(
          // ignore: use_build_context_synchronously
          context,
        ).showSnackBar(
          SnackBar(content: Text("Error creating project $projectName")),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.server.url} ${widget.server.username}"),
      ),
      body: [
        ProjectsList(server: widget.server),
        HealthInfo(server: widget.server),
        UsersList(server: widget.server),
      ].elementAt(currentPageIndex),
      floatingActionButton:
          currentPageIndex == 0
              ? FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () => _newProjectDialog(),
              )
              : null,
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.group_work),
            label: "Projects",
          ),
          NavigationDestination(icon: Icon(Icons.info), label: "Health"),
          if (widget.isAdmin)
            NavigationDestination(icon: Icon(Icons.person), label: "Users"),
        ],
      ),
    );
  }
}
