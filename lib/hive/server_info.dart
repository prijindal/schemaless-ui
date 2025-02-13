import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class ServerInfo extends HiveObject {
  @HiveField(0)
  String url;

  @HiveField(1)
  String username;

  @HiveField(2)
  String jwtToken;

  ServerInfo({
    required this.url,
    required this.username,
    required this.jwtToken,
  });
}
