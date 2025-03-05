import 'dart:io';

import 'package:dio/io.dart';
import 'package:schemaless_openapi/schemaless_openapi.dart';

import 'database.dart';

class ApiFromServerInfo {
  final SchemalessOpenapi api;

  ApiFromServerInfo(ServerInfoData info)
    : api = SchemalessOpenapi(
        basePathOverride: Uri.parse(info.url).replace(path: "/api").toString(),
      )..setBearerAuth("bearer_management", info.jwtToken) {
    if (info.allowInsecure) {
      (api.dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
        final client = HttpClient();
        client.badCertificateCallback = (cert, host, port) => true;
        return client;
      };
    }
  }

  HealthApi get healthApi => api.getHealthApi();
  ManagementApplicationApi get managementApplicationApi =>
      api.getManagementApplicationApi();
  ManagementApplicationUserApi get managementApplicationUserApi =>
      api.getManagementApplicationUserApi();
  ManagementAuthApi get managementAuthApi => api.getManagementAuthApi();
  ManagementEntityApi get managementEntityApi => api.getManagementEntityApi();
  ManagementUserApi get managementUserApi => api.getManagementUserApi();
}

SchemalessOpenapi getApiFromUrl(String url, {bool allowInsecure = false}) {
  final api = SchemalessOpenapi(
    basePathOverride: Uri.parse(url).replace(path: "/api").toString(),
  );
  if (allowInsecure) {
    (api.dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
      final client = HttpClient();
      client.badCertificateCallback = (cert, host, port) => true;
      return client;
    };
  }
  return api;
}
