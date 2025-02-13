import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key, required this.error, required this.scaffold});

  final Object error;
  final bool scaffold;

  @override
  Widget build(BuildContext context) {
    if (scaffold) {
      return Scaffold(
        appBar: AppBar(title: Text("Some error occurred")),
        body: Text(error.toString()),
      );
    } else {
      return Text(error.toString());
    }
  }
}
