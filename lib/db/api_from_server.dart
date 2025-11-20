import 'package:grpc/grpc_connection_interface.dart';

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
        metadata: {"authorization": "Bearer ${info.jwtToken}"},
      );

  AuthServiceClient get authClient =>
      AuthServiceClient(channel, options: callOptions);
  HealthServiceClient get healthClient =>
      HealthServiceClient(channel, options: callOptions);
  ManagementUserServiceClient get managementUserClient =>
      ManagementUserServiceClient(channel, options: callOptions);
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
        metadata: {"authorization": "Bearer ${info.jwtToken}"},
      );

  application_service.EntityServiceClient get entityClient =>
      application_service.EntityServiceClient(channel, options: callOptions);
}

LoginServiceClient getLoginApiFromUrl(
  String url, {
  bool tls = false,
  bool allowInsecure = false,
}) {
  final channel = getChannelFromUrl(
    url,
    tls: tls,
    allowInsecure: allowInsecure,
  );
  return LoginServiceClient(channel);
}
