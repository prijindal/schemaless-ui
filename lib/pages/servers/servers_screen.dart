import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../db/database.dart';
import '../../router/app_router.dart';

@RoutePage()
class ServersScreen extends StatelessWidget {
  const ServersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final manager = GetIt.I<SharedDatabase>().managers.serverInfo;
    return Scaffold(
      appBar: AppBar(title: const Text('Servers')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => GetIt.I<AppRouter>().navigatePath("/newserver"),
        child: Icon(Icons.add),
      ),
      body: StreamBuilder<List<ServerInfoData>>(
        initialData: <ServerInfoData>[],
        stream: manager.watch(),
        builder: (context, box) {
          final list = box.requireData;
          if (list.isEmpty) {
            return Center(child: Text("No servers found"));
          }
          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              final info = list.elementAt(index);
              return ListTile(
                title: Text(info.url),
                subtitle: Text("Email: ${info.email}"),
                trailing: PopupMenuButton(
                  itemBuilder:
                      (context) => [
                        PopupMenuItem<void>(
                          child: Text("Delete"),
                          onTap: () async {
                            await manager
                                .filter((f) => f.id.equals(info.id))
                                .delete();
                            // ignore: use_build_context_synchronously
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Server Deleted")),
                            );
                          },
                        ),
                      ],
                ),

                onTap:
                    () =>
                        GetIt.I<AppRouter>().navigatePath("/server/${info.id}"),
              );
            },
          );
        },
      ),
    );
  }
}
