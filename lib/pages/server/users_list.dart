import 'package:flutter/material.dart';

import '../../db/api_from_server.dart';
import '../../db/database.dart';
import '../../helpers/listify_stream.dart';
import '../../helpers/parse_errors.dart';
import '../../schemaless_proto/google/protobuf/empty.pb.dart';
import '../../schemaless_proto/management/services.pb.dart';
import '../../schemaless_proto/types/login.pb.dart';
import '../errors/error_screen.dart';

class UsersList extends StatelessWidget {
  const UsersList({super.key, required this.server});
  final ServerInfoData server;

  ManagementApiFromServerInfo get api => ManagementApiFromServerInfo(server);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: listifyStream(api.managementUserClient.streamUsers(Empty())),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorScreen(error: snapshot.error!, scaffold: false);
        }
        final users = snapshot.data;
        if (users == null || users.isEmpty) {
          return Center(child: Text("No data found"));
        }
        return ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            return ListTile(
              title: Text(user.email),
              subtitle: Text(
                "isAdmin: ${user.isAdmin}, status: ${user.status}, createdAt: ${user.createdAt}",
              ),
              trailing: PopupMenuButton(
                itemBuilder:
                    (context) => [
                      PopupMenuItem<void>(
                        child: Text(
                          user.status == UserStatus.UserActivated
                              ? "Deactivate"
                              : "Activated",
                        ),
                        onTap: () async {
                          try {
                            await api.managementUserClient.toggleUserApproval(
                              ToggleUserApprovalRequest(
                                iD: user.iD,
                                approve:
                                    user.status != UserStatus.UserActivated,
                              ),
                            );
                            // ignore: use_build_context_synchronously
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  "User ${user.status == UserStatus.UserActivated ? "Deactivate" : "Activated"}",
                                ),
                              ),
                            );
                          } on Exception catch (e) {
                            // ignore: use_build_context_synchronously
                            await parseErrors(context, e);
                          }
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
