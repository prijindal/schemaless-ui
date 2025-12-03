import 'dart:convert';

import 'package:drift/drift.dart' as drift;
import 'package:get_it/get_it.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:http/http.dart' as http;

import '../schemaless_proto/application_services/v1/services.pbgrpc.dart'
    as application_service;
import '../schemaless_proto/management_services/v1/services.pbgrpc.dart';
import 'database.dart';
import 'get_channel/main.dart';

class TokenResponse {
  final String accessToken;
  final String refreshToken;
  final DateTime expiresAt;

  TokenResponse({
    required this.accessToken,
    required this.refreshToken,
    required this.expiresAt,
  });
}

Future<TokenResponse> fetchAccessToken(ServerInfoData info) async {
  if (info.expiresAt.difference(DateTime.now()).inSeconds > 0) {
    return TokenResponse(
      accessToken: info.accessToken,
      refreshToken: info.refreshToken,
      expiresAt: info.expiresAt,
    );
  } else {
    var json = await http.post(
      Uri.parse(info.tokenEndpoint),
      body: {
        'grant_type': "refresh_token",
        'refresh_token': info.refreshToken,
        'client_id': info.clientId,
      },
    );
    final body = jsonDecode(json.body);
    final expiresIn = body["expires_in"] as int;
    final expiresAt = DateTime.now().add(Duration(seconds: expiresIn));
    final accessToken = body["access_token"] as String;
    final refreshToken = body["refresh_token"] as String;
    return TokenResponse(
      accessToken: accessToken,
      refreshToken: refreshToken,
      expiresAt: expiresAt,
    );
  }
}

class ManagementApiFromServerInfo {
  final ClientChannelBase channel;
  final CallOptions callOptions;

  ManagementApiFromServerInfo(ServerInfoData info)
    : channel = getChannelFromUrl(
        info.url,
        tls: info.tls,
        allowInsecure: info.allowInsecure,
      ),
      callOptions = CallOptions(
        providers: [
          (metadata, uri) async {
            final token = await fetchAccessToken(info);
            metadata["authorization"] = "Bearer ${token.accessToken}";
            await GetIt.I<SharedDatabase>().managers.serverInfo
                .filter((f) => f.id.equals(info.id))
                .update(
                  (u) => u(
                    accessToken: drift.Value(token.accessToken),
                    refreshToken: drift.Value(token.refreshToken),
                    expiresAt: drift.Value((token.expiresAt)),
                  ),
                );
          },
        ],
      );

  AuthServiceClient get authClient =>
      AuthServiceClient(channel, options: callOptions);
  HealthServiceClient get healthClient =>
      HealthServiceClient(channel, options: callOptions);
  ApplicationServiceClient get applicationClient =>
      ApplicationServiceClient(channel, options: callOptions);
  ApplicationDomainServiceClient get applicationDomainClient =>
      ApplicationDomainServiceClient(channel, options: callOptions);
}

class ApplicationApiFromServerInfo {
  final ClientChannelBase channel;
  final CallOptions callOptions;

  ApplicationApiFromServerInfo(ServerInfoData info)
    : channel = getChannelFromUrl(
        info.url,
        tls: info.tls,
        allowInsecure: info.allowInsecure,
      ),
      callOptions = CallOptions(
        providers: [
          (metadata, uri) async {
            final token = await fetchAccessToken(info);
            metadata["authorization"] = "Bearer ${token.accessToken}";
          },
        ],
      );

  application_service.EntityServiceClient get entityClient =>
      application_service.EntityServiceClient(channel, options: callOptions);
}

ConfigServiceClient getConfigApiFromUrl(
  String url, {

  bool tls = false,

  bool allowInsecure = false,
}) {
  final channel = getChannelFromUrl(
    url,
    tls: tls,
    allowInsecure: allowInsecure,
  );
  return ConfigServiceClient(channel);
}
