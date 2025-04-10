import 'package:grpc/grpc_connection_interface.dart';

import '../schemaless_proto/management/services.pbgrpc.dart';
import 'database.dart';
import 'get_channel/main.dart';

class ApiFromServerInfo {
  final ClientChannelBase channel;
  final CallOptions callOptions;

  ApiFromServerInfo(ServerInfoData info)
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
  ApplicationUserServiceClient get applicationUserClient =>
      ApplicationUserServiceClient(channel, options: callOptions);
  EntityServiceClient get entityClient =>
      EntityServiceClient(channel, options: callOptions);
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
