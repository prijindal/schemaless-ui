import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ServersScreen extends StatelessWidget {
  const ServersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Servers')),
      body: Center(child: Text('Servers Screen')),
    );
  }
}
