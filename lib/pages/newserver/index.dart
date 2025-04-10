import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:drift/drift.dart' as drift;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:watch_it/watch_it.dart';

import '../../db/api_from_server.dart';
import '../../db/database.dart';
import '../../helpers/parse_errors.dart';
import '../../router/app_router.dart';
import '../../schemaless_proto/types/login.pb.dart';

const allowedProtocols = kIsWeb ? ["https", "http"] : ["grpc"];

@RoutePage()
class NewServerScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();

  NewServerScreen({super.key});

  Future<void> _initialize(BuildContext context) async {
    if (_formKey.currentState?.saveAndValidate() == true) {
      final project = _formKey.currentState!.value;
      final url = project["url"] as String;
      final email = project["email"] as String;
      final password = project["password"] as String;
      final tls = project["tls"] as bool;
      final allowInsecure = project["allowInsecure"] as bool;
      try {
        await getLoginApiFromUrl(
          url,
          tls: tls,
          allowInsecure: allowInsecure,
        ).initialize(LoginRequest(email: email, password: password));
        // ignore: use_build_context_synchronously
        await _login(context);
      } on Exception catch (e) {
        // ignore: use_build_context_synchronously
        await parseErrors(context, e);
      }
    }
  }

  Future<void> _register(BuildContext context) async {
    if (_formKey.currentState?.saveAndValidate() == true) {
      final project = _formKey.currentState!.value;
      final url = project["url"] as String;
      final email = project["email"] as String;
      final password = project["password"] as String;
      final tls = project["tls"] as bool;
      final allowInsecure = project["allowInsecure"] as bool;
      try {
        await getLoginApiFromUrl(
          url,
          tls: tls,
          allowInsecure: allowInsecure,
        ).registerUser(LoginRequest(email: email, password: password));
        // ignore: use_build_context_synchronously
        await _login(context);
      } on Exception catch (e) {
        // ignore: use_build_context_synchronously
        await parseErrors(context, e);
      }
    }
  }

  Future<void> _login(BuildContext context) async {
    if (_formKey.currentState?.saveAndValidate() == true) {
      final project = _formKey.currentState!.value;
      final url = project["url"] as String;
      final email = project["email"] as String;
      final password = project["password"] as String;
      final tls = project["tls"] as bool;
      final allowInsecure = project["allowInsecure"] as bool;
      try {
        final loginResponse = await getLoginApiFromUrl(
          url,
          tls: tls,
          allowInsecure: allowInsecure,
        ).loginUser(LoginRequest(email: email, password: password));
        final jwtToken = loginResponse.token;
        // Login and get the jwt token
        // Save the jwt token in the server_info box
        final info = await GetIt.I<SharedDatabase>().managers.serverInfo
            .createReturning(
              (o) => o(
                url: url,
                email: email,
                jwtToken: jwtToken,
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
                  name: "email",
                  keyboardType: TextInputType.emailAddress,
                  autofillHints: [AutofillHints.email],
                  decoration: InputDecoration(labelText: 'Email'),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.email(),
                  ]),
                ),
                SizedBox(height: 10),
                FormBuilderTextField(
                  name: "password",
                  obscureText: true,
                  autofillHints: [AutofillHints.password],
                  decoration: InputDecoration(labelText: 'Password'),
                  validator: FormBuilderValidators.required(),
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
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => _register(context),
                  child: Text("Register"),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => _initialize(context),
                  child: Text("Initialize"),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
