import 'package:schemaless_openapi/schemaless_openapi.dart';

import 'database.dart';

class ApiFromServerInfo {
  final SchemalessOpenapi api;

  ApiFromServerInfo(ServerInfoData info)
    : api = SchemalessOpenapi(basePathOverride: info.url)
        ..setBearerAuth("bearer_auth", info.jwtToken);

  AdminApi get adminApi => api.getAdminApi();
  HealthApi get healthApi => api.getHealthApi();
  AuthApi get authApi => api.getAuthApi();
  EntityApi get entityApi => api.getEntityApi();
}
