import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:uuid/uuid.dart';

part 'database.g.dart';

const _uuid = Uuid();

class ServerInfo extends Table {
  late final id = text().clientDefault(() => _uuid.v4())();
  late final url = text()();
  late final email = text()();
  late final jwtToken = text()();
  late final tls = boolean().clientDefault(() => false)();
  late final allowInsecure = boolean().clientDefault(() => false)();

  @override
  Set<Column> get primaryKey => {id};
}

// this annotation tells drift to prepare a database class that uses both of the
// tables we just defined. We'll see how to use that database class in a moment.
@DriftDatabase(tables: [ServerInfo])
class SharedDatabase extends _$SharedDatabase {
  // Keeping a custom constructor is useful for unit tests which may want to
  // open an in-memory database only.
  SharedDatabase(super.e);

  SharedDatabase.local()
    : super(
        driftDatabase(
          name: "schemaless",
          web: DriftWebOptions(
            sqlite3Wasm: Uri.parse('sqlite3.wasm'),
            driftWorker: Uri.parse('drift_worker.dart.js'),
          ),
        ),
      );

  @override
  int get schemaVersion => 1;
}
