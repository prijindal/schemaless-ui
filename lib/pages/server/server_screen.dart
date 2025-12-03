import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';

import '../../db/api_from_server.dart';
import '../../db/database.dart';
import '../../schemaless_proto/management_services/v1/services.pb.dart';
import '../errors/error_screen.dart';
import '../loading.dart';
import 'applications_list.dart';
import 'health_info.dart';

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
  ManagementApiFromServerInfo get api => ManagementApiFromServerInfo(server);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: api.authClient.verifyUser(VerifyUserRequest()),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorScreen(error: snapshot.error!, scaffold: true);
        }
        if (snapshot.hasData == false) {
          return LoadingScreen(scaffold: true);
        }
        return _ServerScreenScaffold(
          server: server,
          isAdmin: snapshot.requireData.isAdmin,
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
  ManagementApiFromServerInfo get api =>
      ManagementApiFromServerInfo(widget.server);

  Future<void> _addApplicationDialog() async {
    final formKey = GlobalKey<FormBuilderState>();
    final created = await showDialog<bool?>(
      context: context,
      builder:
          (context) => Dialog(
            child: FormBuilder(
              key: formKey,
              initialValue: {
                "policy":
                    "package com.application.todoapp\n\nallow := true\n\nfilter := {\"app_user_id\": input.user.sub}",
              },
              child: AutofillGroup(
                child: Container(
                  padding: EdgeInsets.all(12.0),
                  width: 300,
                  height: 400,
                  child: Center(
                    child: ListView(
                      children: [
                        FormBuilderTextField(
                          name: "name",
                          autofocus: true,
                          autofillHints: [AutofillHints.url],
                          decoration: InputDecoration(labelText: 'Name'),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(),
                          ]),
                        ),
                        SizedBox(height: 10),
                        FormBuilderTextField(
                          name: "openid_issuer",
                          autofocus: false,
                          decoration: InputDecoration(
                            labelText: 'OpenID Issuer',
                          ),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(),
                          ]),
                        ),
                        SizedBox(height: 10),
                        FormBuilderTextField(
                          name: "policy",
                          autofocus: false,
                          maxLines: 10,
                          minLines: 5,
                          decoration: InputDecoration(labelText: 'Policy'),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(),
                          ]),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          onPressed:
                              () => {Navigator.of(context).pop<bool>(true)},
                          child: Text("Add"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
    );
    if (created != null &&
        created &&
        formKey.currentState?.saveAndValidate() == true) {
      final application = formKey.currentState!.value;
      final name = application["name"] as String;
      final openIdIssuerUrl = application["openid_issuer"] as String;
      final policy = application["policy"] as String;
      await api.applicationClient.createApplication(
        CreateApplicationRequest(
          name: name,
          policyFileContent: policy,
          openidIssuerUrl: openIdIssuerUrl,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.server.url)),
      floatingActionButton:
          currentPageIndex == 0
              ? FloatingActionButton(
                onPressed: _addApplicationDialog,
                tooltip: "Add Application",
                child: Icon(Icons.add),
              )
              : null,
      body: [
        ApplicationsList(server: widget.server),
        HealthInfo(server: widget.server),
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
        ],
      ),
    );
  }
}
