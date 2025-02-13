import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:schemaless_openapi/schemaless_openapi.dart';
import 'package:watch_it/watch_it.dart';

import '../../db/database.dart';
import '../../router/app_router.dart';

@RoutePage()
class NewServerScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();

  NewServerScreen({super.key});

  Future<void> _onSave() async {
    if (_formKey.currentState?.saveAndValidate() == true) {
      final project = _formKey.currentState!.value;
      final url = project["url"] as String;
      final username = project["username"] as String;
      final password = project["password"] as String;
      final api = SchemalessOpenapi(basePathOverride: url);
      final userLoginRequest = UserLoginRequestBuilder();
      userLoginRequest.username = username;
      userLoginRequest.password = password;
      final loginResponse = await api.getLoginApi().loginUser(
        userLoginRequest: userLoginRequest.build(),
      );
      final responseData = loginResponse.data;
      if (responseData == null || responseData.isString == false) {
        throw Error();
      }
      final jwtToken = responseData.asString;
      // Login and get the jwt token
      // Save the jwt token in the server_info box
      final info = await GetIt.I<SharedDatabase>().managers.serverInfo
          .createReturning(
            (o) => o(url: url, username: username, jwtToken: jwtToken),
          );
      GetIt.I<AppRouter>().navigateNamed("/server/${info.id}");
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('New Server')),
    body: FormBuilder(
      key: _formKey,
      child: ListView(
        children: [
          FormBuilderTextField(
            name: "url",
            autofocus: true,
            decoration: InputDecoration(labelText: 'Title'),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.url(
                protocols: ["https", "http"],
                requireProtocol: true,
              ),
            ]),
          ),
          FormBuilderTextField(
            name: "username",
            decoration: InputDecoration(labelText: 'Username'),
            validator: FormBuilderValidators.required(),
          ),
          FormBuilderTextField(
            name: "password",
            obscureText: true,
            decoration: InputDecoration(labelText: 'Password'),
            validator: FormBuilderValidators.required(),
          ),
          ElevatedButton(onPressed: _onSave, child: Text("Save")),
        ],
      ),
    ),
  );
}
