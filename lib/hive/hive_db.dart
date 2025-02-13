import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'server_info.dart';

class HiveDB {
  final Box<ServerInfo> serverInfoBox;

  HiveDB({required this.serverInfoBox});

  static Future<HiveDB> init() async {
    if (!kIsWeb) {
      Hive.init((await getApplicationDocumentsDirectory()).path);
    }
    final box = await Hive.openBox<ServerInfo>('server_info');
    return HiveDB(serverInfoBox: box);
  }
}
