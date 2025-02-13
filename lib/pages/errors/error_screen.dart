import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key, required this.error, required this.scaffold});

  final Error error;
  final bool scaffold;

  @override
  Widget build(BuildContext context) {
    if (scaffold) {
      return Scaffold(
        appBar: AppBar(title: Text(error.toString())),
        body: Text(error.stackTrace.toString()),
      );
    } else {
      return Text(error.toString());
    }
  }
}
