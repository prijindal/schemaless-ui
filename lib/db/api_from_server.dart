import 'dart:convert';

import 'package:drift/drift.dart' as drift;
import 'package:get_it/get_it.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:http/http.dart' as http;

import '../schemaless_proto/application/services.pbgrpc.dart'
    as application_service;
import '../schemaless_proto/management/services.pbgrpc.dart';
import 'database.dart';
import 'get_channel/main.dart';

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
            print(info.expiresAt);
            if (info.expiresAt.difference(DateTime.now()).inSeconds > 0) {
              metadata["authorization"] = "Bearer ${info.accessToken}";
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
              print(body);
              final expires_in = body["expires_in"] as int;
              final expires_at = DateTime.now().add(
                Duration(seconds: expires_in),
              );
              final access_token = body["access_token"] as String;
              final refresh_token = body["refresh_token"] as String;
              await GetIt.I<SharedDatabase>().managers.serverInfo
                  .filter((f) => f.id.equals(info.id))
                  .update(
                    (u) => u(
                      accessToken: drift.Value(access_token),
                      refreshToken: drift.Value(refresh_token),
                      expiresAt: drift.Value((expires_at)),
                    ),
                  );
              metadata["authorization"] = "Bearer ${access_token}";
            }
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
            if (info.expiresAt.difference(DateTime.now()).inSeconds > 0) {
              metadata["authorization"] = "Bearer ${info.accessToken}";
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
              final expires_at = body["expires_at"] as DateTime;
              final access_token = body["access_token"] as DateTime;
              final refresh_token = body["refresh_token"] as DateTime;
              metadata["authorization"] = "Bearer ${access_token}";
              // Refresh token
            }
            return;
          },
        ],
      );

  application_service.EntityServiceClient get entityClient =>
      application_service.EntityServiceClient(channel, options: callOptions);
}
