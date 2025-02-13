import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../hive/hive_db.dart';

@RoutePage()
class ServersScreen extends StatelessWidget {
  const ServersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final box = GetIt.I<HiveDB>().serverInfoBox;
    return Scaffold(
      appBar: AppBar(title: const Text('Servers')),
      body: ValueListenableBuilder(
        valueListenable: box.listenable(),
        builder: (context, box, widget) {
          return ListView.builder(
            itemCount: box.length,
            itemBuilder: (context, index) {
              final info = box.getAt(index);
              if (info == null) {
                return Text("Some error getting $index element");
              }
              return ListTile(title: Text("Server ${info.url}"));
            },
          );
        },
      ),
    );
  }
}
