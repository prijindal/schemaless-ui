// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ServerInfoTable extends ServerInfo
    with TableInfo<$ServerInfoTable, ServerInfoData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ServerInfoTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: () => _uuid.v4(),
  );
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
    'url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _usernameMeta = const VerificationMeta(
    'username',
  );
  @override
  late final GeneratedColumn<String> username = GeneratedColumn<String>(
    'username',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _jwtTokenMeta = const VerificationMeta(
    'jwtToken',
  );
  @override
  late final GeneratedColumn<String> jwtToken = GeneratedColumn<String>(
    'jwt_token',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, url, username, jwtToken];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'server_info';
  @override
  VerificationContext validateIntegrity(
    Insertable<ServerInfoData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('url')) {
      context.handle(
        _urlMeta,
        url.isAcceptableOrUnknown(data['url']!, _urlMeta),
      );
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('username')) {
      context.handle(
        _usernameMeta,
        username.isAcceptableOrUnknown(data['username']!, _usernameMeta),
      );
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('jwt_token')) {
      context.handle(
        _jwtTokenMeta,
        jwtToken.isAcceptableOrUnknown(data['jwt_token']!, _jwtTokenMeta),
      );
    } else if (isInserting) {
      context.missing(_jwtTokenMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ServerInfoData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ServerInfoData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}id'],
          )!,
      url:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}url'],
          )!,
      username:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}username'],
          )!,
      jwtToken:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}jwt_token'],
          )!,
    );
  }

  @override
  $ServerInfoTable createAlias(String alias) {
    return $ServerInfoTable(attachedDatabase, alias);
  }
}

class ServerInfoData extends DataClass implements Insertable<ServerInfoData> {
  final String id;
  final String url;
  final String username;
  final String jwtToken;
  const ServerInfoData({
    required this.id,
    required this.url,
    required this.username,
    required this.jwtToken,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['url'] = Variable<String>(url);
    map['username'] = Variable<String>(username);
    map['jwt_token'] = Variable<String>(jwtToken);
    return map;
  }

  ServerInfoCompanion toCompanion(bool nullToAbsent) {
    return ServerInfoCompanion(
      id: Value(id),
      url: Value(url),
      username: Value(username),
      jwtToken: Value(jwtToken),
    );
  }

  factory ServerInfoData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ServerInfoData(
      id: serializer.fromJson<String>(json['id']),
      url: serializer.fromJson<String>(json['url']),
      username: serializer.fromJson<String>(json['username']),
      jwtToken: serializer.fromJson<String>(json['jwtToken']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'url': serializer.toJson<String>(url),
      'username': serializer.toJson<String>(username),
      'jwtToken': serializer.toJson<String>(jwtToken),
    };
  }

  ServerInfoData copyWith({
    String? id,
    String? url,
    String? username,
    String? jwtToken,
  }) => ServerInfoData(
    id: id ?? this.id,
    url: url ?? this.url,
    username: username ?? this.username,
    jwtToken: jwtToken ?? this.jwtToken,
  );
  ServerInfoData copyWithCompanion(ServerInfoCompanion data) {
    return ServerInfoData(
      id: data.id.present ? data.id.value : this.id,
      url: data.url.present ? data.url.value : this.url,
      username: data.username.present ? data.username.value : this.username,
      jwtToken: data.jwtToken.present ? data.jwtToken.value : this.jwtToken,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ServerInfoData(')
          ..write('id: $id, ')
          ..write('url: $url, ')
          ..write('username: $username, ')
          ..write('jwtToken: $jwtToken')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, url, username, jwtToken);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ServerInfoData &&
          other.id == this.id &&
          other.url == this.url &&
          other.username == this.username &&
          other.jwtToken == this.jwtToken);
}

class ServerInfoCompanion extends UpdateCompanion<ServerInfoData> {
  final Value<String> id;
  final Value<String> url;
  final Value<String> username;
  final Value<String> jwtToken;
  final Value<int> rowid;
  const ServerInfoCompanion({
    this.id = const Value.absent(),
    this.url = const Value.absent(),
    this.username = const Value.absent(),
    this.jwtToken = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ServerInfoCompanion.insert({
    this.id = const Value.absent(),
    required String url,
    required String username,
    required String jwtToken,
    this.rowid = const Value.absent(),
  }) : url = Value(url),
       username = Value(username),
       jwtToken = Value(jwtToken);
  static Insertable<ServerInfoData> custom({
    Expression<String>? id,
    Expression<String>? url,
    Expression<String>? username,
    Expression<String>? jwtToken,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (url != null) 'url': url,
      if (username != null) 'username': username,
      if (jwtToken != null) 'jwt_token': jwtToken,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ServerInfoCompanion copyWith({
    Value<String>? id,
    Value<String>? url,
    Value<String>? username,
    Value<String>? jwtToken,
    Value<int>? rowid,
  }) {
    return ServerInfoCompanion(
      id: id ?? this.id,
      url: url ?? this.url,
      username: username ?? this.username,
      jwtToken: jwtToken ?? this.jwtToken,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (jwtToken.present) {
      map['jwt_token'] = Variable<String>(jwtToken.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ServerInfoCompanion(')
          ..write('id: $id, ')
          ..write('url: $url, ')
          ..write('username: $username, ')
          ..write('jwtToken: $jwtToken, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$SharedDatabase extends GeneratedDatabase {
  _$SharedDatabase(QueryExecutor e) : super(e);
  $SharedDatabaseManager get managers => $SharedDatabaseManager(this);
  late final $ServerInfoTable serverInfo = $ServerInfoTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [serverInfo];
}

typedef $$ServerInfoTableCreateCompanionBuilder =
    ServerInfoCompanion Function({
      Value<String> id,
      required String url,
      required String username,
      required String jwtToken,
      Value<int> rowid,
    });
typedef $$ServerInfoTableUpdateCompanionBuilder =
    ServerInfoCompanion Function({
      Value<String> id,
      Value<String> url,
      Value<String> username,
      Value<String> jwtToken,
      Value<int> rowid,
    });

class $$ServerInfoTableFilterComposer
    extends Composer<_$SharedDatabase, $ServerInfoTable> {
  $$ServerInfoTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get url => $composableBuilder(
    column: $table.url,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get username => $composableBuilder(
    column: $table.username,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get jwtToken => $composableBuilder(
    column: $table.jwtToken,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ServerInfoTableOrderingComposer
    extends Composer<_$SharedDatabase, $ServerInfoTable> {
  $$ServerInfoTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get url => $composableBuilder(
    column: $table.url,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get username => $composableBuilder(
    column: $table.username,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get jwtToken => $composableBuilder(
    column: $table.jwtToken,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ServerInfoTableAnnotationComposer
    extends Composer<_$SharedDatabase, $ServerInfoTable> {
  $$ServerInfoTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get url =>
      $composableBuilder(column: $table.url, builder: (column) => column);

  GeneratedColumn<String> get username =>
      $composableBuilder(column: $table.username, builder: (column) => column);

  GeneratedColumn<String> get jwtToken =>
      $composableBuilder(column: $table.jwtToken, builder: (column) => column);
}

class $$ServerInfoTableTableManager
    extends
        RootTableManager<
          _$SharedDatabase,
          $ServerInfoTable,
          ServerInfoData,
          $$ServerInfoTableFilterComposer,
          $$ServerInfoTableOrderingComposer,
          $$ServerInfoTableAnnotationComposer,
          $$ServerInfoTableCreateCompanionBuilder,
          $$ServerInfoTableUpdateCompanionBuilder,
          (
            ServerInfoData,
            BaseReferences<_$SharedDatabase, $ServerInfoTable, ServerInfoData>,
          ),
          ServerInfoData,
          PrefetchHooks Function()
        > {
  $$ServerInfoTableTableManager(_$SharedDatabase db, $ServerInfoTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$ServerInfoTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$ServerInfoTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$ServerInfoTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> url = const Value.absent(),
                Value<String> username = const Value.absent(),
                Value<String> jwtToken = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ServerInfoCompanion(
                id: id,
                url: url,
                username: username,
                jwtToken: jwtToken,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                required String url,
                required String username,
                required String jwtToken,
                Value<int> rowid = const Value.absent(),
              }) => ServerInfoCompanion.insert(
                id: id,
                url: url,
                username: username,
                jwtToken: jwtToken,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ServerInfoTableProcessedTableManager =
    ProcessedTableManager<
      _$SharedDatabase,
      $ServerInfoTable,
      ServerInfoData,
      $$ServerInfoTableFilterComposer,
      $$ServerInfoTableOrderingComposer,
      $$ServerInfoTableAnnotationComposer,
      $$ServerInfoTableCreateCompanionBuilder,
      $$ServerInfoTableUpdateCompanionBuilder,
      (
        ServerInfoData,
        BaseReferences<_$SharedDatabase, $ServerInfoTable, ServerInfoData>,
      ),
      ServerInfoData,
      PrefetchHooks Function()
    >;

class $SharedDatabaseManager {
  final _$SharedDatabase _db;
  $SharedDatabaseManager(this._db);
  $$ServerInfoTableTableManager get serverInfo =>
      $$ServerInfoTableTableManager(_db, _db.serverInfo);
}
