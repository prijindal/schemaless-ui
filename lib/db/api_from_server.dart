import 'package:schemaless_openapi/schemaless_openapi.dart';

import 'database.dart';

class ApiFromServerInfo {
  final SchemalessOpenapi api;

  ApiFromServerInfo(ServerInfoData info)
    : api = SchemalessOpenapi(
        basePathOverride: Uri.parse(info.url).replace(path: "/api").toString(),
      )..setBearerAuth("bearer_management", info.jwtToken);

  HealthApi get healthApi => api.getHealthApi();
  ManagementApplicationApi get managementApplicationApi =>
      api.getManagementApplicationApi();
  ManagementApplicationUserApi get managementApplicationUserApi =>
      api.getManagementApplicationUserApi();
  ManagementAuthApi get managementAuthApi => api.getManagementAuthApi();
  ManagementEntityApi get managementEntityApi => api.getManagementEntityApi();
  ManagementUserApi get managementUserApi => api.getManagementUserApi();
}
