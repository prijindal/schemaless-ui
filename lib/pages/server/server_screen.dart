import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../db/api_from_server.dart';
import '../../db/database.dart';
import '../../helpers/parse_errors.dart';
import '../../schemaless_proto/google/protobuf/empty.pb.dart';
import '../../schemaless_proto/management/services.pb.dart';
import '../errors/error_screen.dart';
import '../loading.dart';
import 'applications_list.dart';
import 'health_info.dart';
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
      future: api.authClient.verifyUser(Empty()),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorScreen(error: snapshot.error!, scaffold: true);
        }
        if (snapshot.hasData == false) {
          return LoadingScreen(scaffold: true);
        }
        return _ServerScreenScaffold(
          server: server,
          isAdmin: snapshot.requireData.isAdmin,
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

  Future<void> _addApplication() async {
    final textController = TextEditingController();
    final name = await showDialog<String?>(
      context: context,
      builder:
          (context) => SimpleDialog(
            title: Text("Enter project name"),
            children: [
              TextField(
                controller: textController,
                decoration: InputDecoration(label: Text("Project name")),
              ),
              ElevatedButton(
                child: Text("Add"),
                onPressed: () => Navigator.of(context).pop(textController.text),
              ),
            ],
          ),
    );
    if (name != null) {
      await api.applicationClient.createApplication(
        CreateApplicationRequest(name: name),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.server.url} ${widget.server.email}"),
        actions: [
          PopupMenuButton(
            itemBuilder:
                (context) => [
                  PopupMenuItem<void>(
                    child: Text("Revoke Keys"),
                    onTap: () async {
                      try {
                        await api.authClient.revokeKey(Empty());
                        // ignore: use_build_context_synchronously
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("All keys are revoked")),
                        );
                      } on Exception catch (e) {
                        // ignore: use_build_context_synchronously
                        await parseErrors(context, e);
                      }
                    },
                  ),
                ],
          ),
        ],
      ),
      floatingActionButton:
          currentPageIndex == 0
              ? FloatingActionButton(
                onPressed: _addApplication,
                tooltip: "Add Application",
                child: Icon(Icons.add),
              )
              : null,
      body: [
        ApplicationsList(server: widget.server),
        HealthInfo(server: widget.server),
        UsersList(server: widget.server),
      ].elementAt(currentPageIndex),
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
