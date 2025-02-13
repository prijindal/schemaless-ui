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
        onPressed: () => GetIt.I<AppRouter>().navigateNamed("/newserver"),
        child: Icon(Icons.add),
      ),
      body: StreamBuilder<List<ServerInfoData>>(
        initialData: <ServerInfoData>[],
        stream: manager.watch(),
        builder: (context, box) {
          final list = box.requireData;
          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              final info = list.elementAt(index);
              return ListTile(
                title: Text(info.url),
                subtitle: Text("Username: ${info.username}"),
                onTap:
                    () => GetIt.I<AppRouter>().navigateNamed(
                      "/server/${info.id}",
                    ),
              );
            },
          );
        },
      ),
    );
  }
}
