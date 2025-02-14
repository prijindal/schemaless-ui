import 'package:auto_route/annotations.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';

import '../../db/api_from_server.dart';
import '../../db/database.dart';
import '../../helpers/parse_dio_errors.dart';
import '../errors/error_screen.dart';
import '../loading.dart';
import 'entity_list.dart';
import 'health_info.dart';
import 'users_list.dart';

@RoutePage()
class ServerScreen extends StatelessWidget {
  const ServerScreen({super.key, @pathParam required this.serverId});

  final String serverId;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ServerInfoData>(
      future:
          GetIt.I<SharedDatabase>().managers.serverInfo
              .filter((f) => f.id.equals(serverId))
              .getSingle(),
      builder:
          (context, snapshot) =>
              snapshot.hasData == false
                  ? LoadingScreen(scaffold: true)
                  : _ServerScreen(server: snapshot.requireData),
    );
  }
}

class _ServerScreen extends StatelessWidget {
  const _ServerScreen({required this.server});

  final ServerInfoData server;
  ApiFromServerInfo get api => ApiFromServerInfo(server);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: api.authApi.verifyUserAuth(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorScreen(error: snapshot.error!, scaffold: true);
        }
        if (snapshot.hasData == false || snapshot.requireData.data == null) {
          return LoadingScreen(scaffold: true);
        }
        return _ServerScreenScaffold(
          server: server,
          isAdmin: snapshot.requireData.data?.isAdmin ?? false,
        );
      },
    );
  }
}

class _ServerScreenScaffold extends StatefulWidget {
  const _ServerScreenScaffold({required this.server, required this.isAdmin});

  final ServerInfoData server;
  final bool isAdmin;

  @override
  State<_ServerScreenScaffold> createState() => _ServerScreenScaffoldState();
}

class _ServerScreenScaffoldState extends State<_ServerScreenScaffold> {
  int currentPageIndex = 0;
  ApiFromServerInfo get api => ApiFromServerInfo(widget.server);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.server.url} ${widget.server.username}"),
        actions: [
          PopupMenuButton(
            itemBuilder:
                (context) => [
                  PopupMenuItem<void>(
                    child: Text("Generate Token"),
                    onTap: () async {
                      try {
                        final response = await api.authApi.generateKey();
                        if (response.data == null ||
                            response.data!.isString == false) {
                          throw DioException.badResponse(
                            requestOptions: response.requestOptions,
                            statusCode: 404,
                            response: response,
                          );
                        }
                        final jwtToken = response.data!.asString;
                        await showDialog<void>(
                          // ignore: use_build_context_synchronously
                          context: context,
                          builder:
                              (context) => SimpleDialog(
                                title: Text("New token generated"),
                                children: [
                                  Text(jwtToken),
                                  ElevatedButton(
                                    onPressed: () {
                                      Clipboard.setData(
                                        ClipboardData(text: jwtToken),
                                      );
                                    },
                                    child: Text("Copy to clipboard"),
                                  ),
                                ],
                              ),
                        );
                      } on DioException catch (e) {
                        // ignore: use_build_context_synchronously
                        await parseDioErrors(context, e);
                      }
                    },
                  ),
                  PopupMenuItem<void>(
                    child: Text("Revoke Keys"),
                    onTap: () async {
                      try {
                        final response = await api.authApi.revokeKeys();
                        if (response.data == null) {
                          throw DioException.badResponse(
                            requestOptions: response.requestOptions,
                            statusCode: 404,
                            response: response,
                          );
                        }
                        // ignore: use_build_context_synchronously
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("All keys are revoked")),
                        );
                      } on DioException catch (e) {
                        // ignore: use_build_context_synchronously
                        await parseDioErrors(context, e);
                      }
                    },
                  ),
                ],
          ),
        ],
      ),
      body: [
        EntitesList(server: widget.server),
        HealthInfo(server: widget.server),
        UsersList(server: widget.server),
      ].elementAt(currentPageIndex),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.group_work),
            label: "Projects",
          ),
          NavigationDestination(icon: Icon(Icons.info), label: "Health"),
          if (widget.isAdmin)
            NavigationDestination(icon: Icon(Icons.person), label: "Users"),
        ],
      ),
    );
  }
}
