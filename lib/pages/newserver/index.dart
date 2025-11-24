import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:drift/drift.dart' as drift;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';
import 'package:openid_client/openid_client.dart' as openid;
import 'package:openid_client/openid_client_io.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../db/database.dart';
import '../../helpers/parse_errors.dart';
import '../../router/app_router.dart';

const allowedProtocols = kIsWeb ? ["https", "http"] : ["grpc"];

urlLauncher(String url) async {
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}

@RoutePage()
class NewServerScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();

  NewServerScreen({super.key});

  Future<void> _login(BuildContext context) async {
    if (_formKey.currentState?.saveAndValidate() == true) {
      final project = _formKey.currentState!.value;
      final url = project["url"] as String;
      final client_id = project["client_id"] as String;
      final openid_configuration_url =
          project["openid_configuration_url"] as String;
      final tls = project["tls"] as bool;
      final allowInsecure = project["allowInsecure"] as bool;
      try {
        var issuer = await openid.Issuer.discover(
          Uri.parse((openid_configuration_url)),
        );
        final tokenEndpoint = issuer.metadata.tokenEndpoint;
        var client = new openid.Client(issuer, client_id);

        var authenticator = new Authenticator(
          client,
          port: 4000,
          urlLancher: urlLauncher,
        );

        var c = await authenticator.authorize();

        // close the webview when finished
        // await closeInAppWebView();
        final tokenResponse = await c.getTokenResponse();
        final expiresAt = tokenResponse.expiresAt;
        final accessToken = tokenResponse.accessToken;
        final refreshToken = tokenResponse.refreshToken;
        final info = await GetIt.I<SharedDatabase>().managers.serverInfo
            .createReturning(
              (o) => o(
                url: url,
                clientId: client_id,
                tokenEndpoint: tokenEndpoint.toString(),
                accessToken: accessToken as String,
                refreshToken: refreshToken as String,
                expiresAt: expiresAt as DateTime,
                tls: drift.Value(tls),
                allowInsecure: drift.Value(allowInsecure),
              ),
            );
        GetIt.I<AppRouter>().replacePath("/server/${info.id}");
      } on Exception catch (e) {
        // ignore: use_build_context_synchronously
        await parseErrors(context, e);
      }
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('New Server')),
    body: FormBuilder(
      key: _formKey,
      child: AutofillGroup(
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            width: min(600, MediaQuery.of(context).size.width),
            child: ListView(
              children: [
                FormBuilderTextField(
                  name: "url",
                  autofocus: true,
                  autofillHints: [AutofillHints.url],
                  decoration: InputDecoration(
                    labelText: 'URL, starts with $allowedProtocols',
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.url(
                      protocols: allowedProtocols,
                      requireProtocol: true,
                    ),
                  ]),
                ),
                SizedBox(height: 10),
                FormBuilderTextField(
                  name: "openid_configuration_url",
                  autofocus: false,
                  autofillHints: [AutofillHints.url],
                  decoration: InputDecoration(
                    labelText: 'Openid configuration url',
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.url(),
                  ]),
                ),
                SizedBox(height: 10),
                FormBuilderTextField(
                  name: "client_id",
                  autofocus: false,
                  decoration: InputDecoration(labelText: 'Client ID'),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                ),
                SizedBox(height: 10),
                FormBuilderCheckbox(
                  initialValue: false,
                  enabled: !kIsWeb,
                  name: "tls",
                  title: Text("TLS Enabled"),
                  decoration: InputDecoration(labelText: 'TLS is enabled'),
                ),
                SizedBox(height: 10),
                FormBuilderCheckbox(
                  initialValue: false,
                  enabled: !kIsWeb,
                  name: "allowInsecure",
                  title: Text("Allow Insecure"),
                  decoration: InputDecoration(
                    labelText: 'Allow Insecure Connection',
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => _login(context),
                  child: Text("Login"),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
