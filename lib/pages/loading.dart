import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key, required this.scaffold});

  final bool scaffold;

  @override
  Widget build(BuildContext context) {
    if (scaffold) {
      return Scaffold(
        appBar: AppBar(title: Text("Loading...")),
        body: Center(child: Text("Loading")),
      );
    } else {
      return Center(child: Text("Loading..."));
    }
  }
}
