import 'package:flutter/material.dart';
import 'package:schemaless_openapi/schemaless_openapi.dart';

import '../../db/api_from_server.dart';
import '../../db/database.dart';
import '../errors/error_screen.dart';
import '../loading.dart';

class UsersList extends StatelessWidget {
  const UsersList({super.key, required this.server});
  final ServerInfoData server;

  ApiFromServerInfo get api => ApiFromServerInfo(server);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: api.adminApi.listUsers(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorScreen(error: snapshot.error!, scaffold: false);
        }
        if (snapshot.hasData == false || snapshot.requireData.data == null) {
          return LoadingScreen(scaffold: false);
        }
        return ListView.builder(
          itemCount: snapshot.requireData.data!.length,
          itemBuilder: (context, index) {
            final user = snapshot.requireData.data![index];
            return ListTile(
              title: Text(user.username),
              subtitle: Text(
                "isAdmin: ${user.isAdmin}, status: ${user.status}, createdAt: ${user.createdAt}",
              ),
              trailing: PopupMenuButton(
                itemBuilder:
                    (context) => [
                      PopupMenuItem<void>(
                        child: Text(
                          user.status == UserStatus.ACTIVATED
                              ? "Deactivate"
                              : "Activated",
                        ),
                        onTap: () async {
                          final body = UserApprovalRequestBodyBuilder();
                          body.approval = user.status != UserStatus.ACTIVATED;
                          await api.adminApi.userApproval(
                            userid: user.id,
                            userApprovalRequestBody: body.build(),
                          );
                          // ignore: use_build_context_synchronously
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                "User ${user.status == UserStatus.ACTIVATED ? "Deactivate" : "Activated"}",
                              ),
                            ),
                          );
                        },
                      ),
                    ],
              ),
            );
          },
        );
      },
    );
  }
}
