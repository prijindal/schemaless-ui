import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:schemaless_openapi/schemaless_openapi.dart';
import 'package:watch_it/watch_it.dart';

import '../../db/database.dart';
import '../../helpers/parse_dio_errors.dart';
import '../../router/app_router.dart';

@RoutePage()
class NewServerScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();

  NewServerScreen({super.key});

  SchemalessOpenapi getApi(String url) => SchemalessOpenapi(
    basePathOverride: Uri.parse(url).replace(path: "/api").toString(),
  );

  Future<void> _initialize(BuildContext context) async {
    if (_formKey.currentState?.saveAndValidate() == true) {
      final project = _formKey.currentState!.value;
      final url = project["url"] as String;
      final email = project["email"] as String;
      final password = project["password"] as String;
      final userLoginRequest = ManagementUserLoginRequestBuilder();
      userLoginRequest.email = email;
      userLoginRequest.password = password;
      try {
        final loginResponse = await getApi(url)
            .getManagementAuthApi()
            .initialize(managementUserLoginRequest: userLoginRequest.build());
        final responseData = loginResponse.data;
        if (responseData == null) {
          throw DioException.badResponse(
            requestOptions: loginResponse.requestOptions,
            statusCode: 404,
            response: loginResponse,
          );
        }
        // ignore: use_build_context_synchronously
        await _login(context);
      } on DioException catch (e) {
        // ignore: use_build_context_synchronously
        await parseDioErrors(context, e);
      }
    }
  }

  Future<void> _register(BuildContext context) async {
    if (_formKey.currentState?.saveAndValidate() == true) {
      final project = _formKey.currentState!.value;
      final url = project["url"] as String;
      final email = project["email"] as String;
      final password = project["password"] as String;
      final userLoginRequest = ManagementUserLoginRequestBuilder();
      userLoginRequest.email = email;
      userLoginRequest.password = password;
      try {
        final loginResponse = await getApi(url)
            .getManagementAuthApi()
            .registerUser(managementUserLoginRequest: userLoginRequest.build());
        final responseData = loginResponse.data;
        if (responseData == null) {
          throw DioException.badResponse(
            requestOptions: loginResponse.requestOptions,
            statusCode: 404,
            response: loginResponse,
          );
        }
        // ignore: use_build_context_synchronously
        await _login(context);
      } on DioException catch (e) {
        // ignore: use_build_context_synchronously
        await parseDioErrors(context, e);
      }
    }
  }

  Future<void> _login(BuildContext context) async {
    if (_formKey.currentState?.saveAndValidate() == true) {
      final project = _formKey.currentState!.value;
      final url = project["url"] as String;
      final email = project["email"] as String;
      final password = project["password"] as String;
      final userLoginRequest = ManagementUserLoginRequestBuilder();
      userLoginRequest.email = email;
      userLoginRequest.password = password;
      try {
        final loginResponse = await getApi(url)
            .getManagementAuthApi()
            .loginUser(managementUserLoginRequest: userLoginRequest.build());
        final responseData = loginResponse.data;
        if (responseData == null) {
          throw DioException.badResponse(
            requestOptions: loginResponse.requestOptions,
            statusCode: 404,
            response: loginResponse,
          );
        }
        final jwtToken = responseData;
        // Login and get the jwt token
        // Save the jwt token in the server_info box
        final info = await GetIt.I<SharedDatabase>().managers.serverInfo
            .createReturning(
              (o) => o(url: url, email: email, jwtToken: jwtToken),
            );
        GetIt.I<AppRouter>().replaceNamed("/server/${info.id}");
      } on DioException catch (e) {
        // ignore: use_build_context_synchronously
        await parseDioErrors(context, e);
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
                  decoration: InputDecoration(labelText: 'Title'),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.url(
                      protocols: ["https", "http"],
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
