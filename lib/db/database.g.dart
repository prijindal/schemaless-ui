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
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
    'email',
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
  static const VerificationMeta _tlsMeta = const VerificationMeta('tls');
  @override
  late final GeneratedColumn<bool> tls = GeneratedColumn<bool>(
    'tls',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("tls" IN (0, 1))',
    ),
    clientDefault: () => false,
  );
  static const VerificationMeta _allowInsecureMeta = const VerificationMeta(
    'allowInsecure',
  );
  @override
  late final GeneratedColumn<bool> allowInsecure = GeneratedColumn<bool>(
    'allow_insecure',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("allow_insecure" IN (0, 1))',
    ),
    clientDefault: () => false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    url,
    email,
    jwtToken,
    tls,
    allowInsecure,
  ];
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
    if (data.containsKey('email')) {
      context.handle(
        _emailMeta,
        email.isAcceptableOrUnknown(data['email']!, _emailMeta),
      );
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('jwt_token')) {
      context.handle(
        _jwtTokenMeta,
        jwtToken.isAcceptableOrUnknown(data['jwt_token']!, _jwtTokenMeta),
      );
    } else if (isInserting) {
      context.missing(_jwtTokenMeta);
    }
    if (data.containsKey('tls')) {
      context.handle(
        _tlsMeta,
        tls.isAcceptableOrUnknown(data['tls']!, _tlsMeta),
      );
    }
    if (data.containsKey('allow_insecure')) {
      context.handle(
        _allowInsecureMeta,
        allowInsecure.isAcceptableOrUnknown(
          data['allow_insecure']!,
          _allowInsecureMeta,
        ),
      );
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
      email:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}email'],
          )!,
      jwtToken:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}jwt_token'],
          )!,
      tls:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}tls'],
          )!,
      allowInsecure:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}allow_insecure'],
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
  final String email;
  final String jwtToken;
  final bool tls;
  final bool allowInsecure;
  const ServerInfoData({
    required this.id,
    required this.url,
    required this.email,
    required this.jwtToken,
    required this.tls,
    required this.allowInsecure,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['url'] = Variable<String>(url);
    map['email'] = Variable<String>(email);
    map['jwt_token'] = Variable<String>(jwtToken);
    map['tls'] = Variable<bool>(tls);
    map['allow_insecure'] = Variable<bool>(allowInsecure);
    return map;
  }

  ServerInfoCompanion toCompanion(bool nullToAbsent) {
    return ServerInfoCompanion(
      id: Value(id),
      url: Value(url),
      email: Value(email),
      jwtToken: Value(jwtToken),
      tls: Value(tls),
      allowInsecure: Value(allowInsecure),
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
      email: serializer.fromJson<String>(json['email']),
      jwtToken: serializer.fromJson<String>(json['jwtToken']),
      tls: serializer.fromJson<bool>(json['tls']),
      allowInsecure: serializer.fromJson<bool>(json['allowInsecure']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'url': serializer.toJson<String>(url),
      'email': serializer.toJson<String>(email),
      'jwtToken': serializer.toJson<String>(jwtToken),
      'tls': serializer.toJson<bool>(tls),
      'allowInsecure': serializer.toJson<bool>(allowInsecure),
    };
  }

  ServerInfoData copyWith({
    String? id,
    String? url,
    String? email,
    String? jwtToken,
    bool? tls,
    bool? allowInsecure,
  }) => ServerInfoData(
    id: id ?? this.id,
    url: url ?? this.url,
    email: email ?? this.email,
    jwtToken: jwtToken ?? this.jwtToken,
    tls: tls ?? this.tls,
    allowInsecure: allowInsecure ?? this.allowInsecure,
  );
  ServerInfoData copyWithCompanion(ServerInfoCompanion data) {
    return ServerInfoData(
      id: data.id.present ? data.id.value : this.id,
      url: data.url.present ? data.url.value : this.url,
      email: data.email.present ? data.email.value : this.email,
      jwtToken: data.jwtToken.present ? data.jwtToken.value : this.jwtToken,
      tls: data.tls.present ? data.tls.value : this.tls,
      allowInsecure:
          data.allowInsecure.present
              ? data.allowInsecure.value
              : this.allowInsecure,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ServerInfoData(')
          ..write('id: $id, ')
          ..write('url: $url, ')
          ..write('email: $email, ')
          ..write('jwtToken: $jwtToken, ')
          ..write('tls: $tls, ')
          ..write('allowInsecure: $allowInsecure')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, url, email, jwtToken, tls, allowInsecure);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ServerInfoData &&
          other.id == this.id &&
          other.url == this.url &&
          other.email == this.email &&
          other.jwtToken == this.jwtToken &&
          other.tls == this.tls &&
          other.allowInsecure == this.allowInsecure);
}

class ServerInfoCompanion extends UpdateCompanion<ServerInfoData> {
  final Value<String> id;
  final Value<String> url;
  final Value<String> email;
  final Value<String> jwtToken;
  final Value<bool> tls;
  final Value<bool> allowInsecure;
  final Value<int> rowid;
  const ServerInfoCompanion({
    this.id = const Value.absent(),
    this.url = const Value.absent(),
    this.email = const Value.absent(),
    this.jwtToken = const Value.absent(),
    this.tls = const Value.absent(),
    this.allowInsecure = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ServerInfoCompanion.insert({
    this.id = const Value.absent(),
    required String url,
    required String email,
    required String jwtToken,
    this.tls = const Value.absent(),
    this.allowInsecure = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : url = Value(url),
       email = Value(email),
       jwtToken = Value(jwtToken);
  static Insertable<ServerInfoData> custom({
    Expression<String>? id,
    Expression<String>? url,
    Expression<String>? email,
    Expression<String>? jwtToken,
    Expression<bool>? tls,
    Expression<bool>? allowInsecure,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (url != null) 'url': url,
      if (email != null) 'email': email,
      if (jwtToken != null) 'jwt_token': jwtToken,
      if (tls != null) 'tls': tls,
      if (allowInsecure != null) 'allow_insecure': allowInsecure,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ServerInfoCompanion copyWith({
    Value<String>? id,
    Value<String>? url,
    Value<String>? email,
    Value<String>? jwtToken,
    Value<bool>? tls,
    Value<bool>? allowInsecure,
    Value<int>? rowid,
  }) {
    return ServerInfoCompanion(
      id: id ?? this.id,
      url: url ?? this.url,
      email: email ?? this.email,
      jwtToken: jwtToken ?? this.jwtToken,
      tls: tls ?? this.tls,
      allowInsecure: allowInsecure ?? this.allowInsecure,
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
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (jwtToken.present) {
      map['jwt_token'] = Variable<String>(jwtToken.value);
    }
    if (tls.present) {
      map['tls'] = Variable<bool>(tls.value);
    }
    if (allowInsecure.present) {
      map['allow_insecure'] = Variable<bool>(allowInsecure.value);
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
          ..write('email: $email, ')
          ..write('jwtToken: $jwtToken, ')
          ..write('tls: $tls, ')
          ..write('allowInsecure: $allowInsecure, ')
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
      required String email,
      required String jwtToken,
      Value<bool> tls,
      Value<bool> allowInsecure,
      Value<int> rowid,
    });
typedef $$ServerInfoTableUpdateCompanionBuilder =
    ServerInfoCompanion Function({
      Value<String> id,
      Value<String> url,
      Value<String> email,
      Value<String> jwtToken,
      Value<bool> tls,
      Value<bool> allowInsecure,
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

  ColumnFilters<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get jwtToken => $composableBuilder(
    column: $table.jwtToken,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get tls => $composableBuilder(
    column: $table.tls,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get allowInsecure => $composableBuilder(
    column: $table.allowInsecure,
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

  ColumnOrderings<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get jwtToken => $composableBuilder(
    column: $table.jwtToken,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get tls => $composableBuilder(
    column: $table.tls,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get allowInsecure => $composableBuilder(
    column: $table.allowInsecure,
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

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get jwtToken =>
      $composableBuilder(column: $table.jwtToken, builder: (column) => column);

  GeneratedColumn<bool> get tls =>
      $composableBuilder(column: $table.tls, builder: (column) => column);

  GeneratedColumn<bool> get allowInsecure => $composableBuilder(
    column: $table.allowInsecure,
    builder: (column) => column,
  );
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
                Value<String> email = const Value.absent(),
                Value<String> jwtToken = const Value.absent(),
                Value<bool> tls = const Value.absent(),
                Value<bool> allowInsecure = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ServerInfoCompanion(
                id: id,
                url: url,
                email: email,
                jwtToken: jwtToken,
                tls: tls,
                allowInsecure: allowInsecure,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                required String url,
                required String email,
                required String jwtToken,
                Value<bool> tls = const Value.absent(),
                Value<bool> allowInsecure = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ServerInfoCompanion.insert(
                id: id,
                url: url,
                email: email,
                jwtToken: jwtToken,
                tls: tls,
                allowInsecure: allowInsecure,
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
