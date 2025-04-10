import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';

Future<void> parseErrors(BuildContext context, Exception error) async {
  debugPrint(error.toString());
  String message = "Unknown error occurred";
  // if (error.response != null) {
  //   if (error.response!.data["message"] is String) {
  //     message = error.response!.data["message"] as String;
  //   }
  // }
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      action: SnackBarAction(
        label: "Show full",
        onPressed: () async {
          await showDialog<void>(
            context: context,
            builder:
                (context) => SimpleDialog(
                  title: Text(message),
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 8,
                      ),
                      width: min(400, MediaQuery.of(context).size.width),
                      child: Text(jsonEncode(error.toString())),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 8,
                      ),
                      width: min(400, MediaQuery.of(context).size.width),
                      child: Text(jsonEncode(error.toString())),
                    ),
                  ],
                ),
          );
        },
      ),
    ),
  );
}
