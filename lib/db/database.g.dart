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
  static const VerificationMeta _clientIdMeta = const VerificationMeta(
    'clientId',
  );
  @override
  late final GeneratedColumn<String> clientId = GeneratedColumn<String>(
    'client_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _tokenEndpointMeta = const VerificationMeta(
    'tokenEndpoint',
  );
  @override
  late final GeneratedColumn<String> tokenEndpoint = GeneratedColumn<String>(
    'token_endpoint',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _accessTokenMeta = const VerificationMeta(
    'accessToken',
  );
  @override
  late final GeneratedColumn<String> accessToken = GeneratedColumn<String>(
    'access_token',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _refreshTokenMeta = const VerificationMeta(
    'refreshToken',
  );
  @override
  late final GeneratedColumn<String> refreshToken = GeneratedColumn<String>(
    'refresh_token',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _expiresAtMeta = const VerificationMeta(
    'expiresAt',
  );
  @override
  late final GeneratedColumn<DateTime> expiresAt = GeneratedColumn<DateTime>(
    'expires_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
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
    clientId,
    tokenEndpoint,
    accessToken,
    refreshToken,
    expiresAt,
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
    if (data.containsKey('client_id')) {
      context.handle(
        _clientIdMeta,
        clientId.isAcceptableOrUnknown(data['client_id']!, _clientIdMeta),
      );
    } else if (isInserting) {
      context.missing(_clientIdMeta);
    }
    if (data.containsKey('token_endpoint')) {
      context.handle(
        _tokenEndpointMeta,
        tokenEndpoint.isAcceptableOrUnknown(
          data['token_endpoint']!,
          _tokenEndpointMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_tokenEndpointMeta);
    }
    if (data.containsKey('access_token')) {
      context.handle(
        _accessTokenMeta,
        accessToken.isAcceptableOrUnknown(
          data['access_token']!,
          _accessTokenMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_accessTokenMeta);
    }
    if (data.containsKey('refresh_token')) {
      context.handle(
        _refreshTokenMeta,
        refreshToken.isAcceptableOrUnknown(
          data['refresh_token']!,
          _refreshTokenMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_refreshTokenMeta);
    }
    if (data.containsKey('expires_at')) {
      context.handle(
        _expiresAtMeta,
        expiresAt.isAcceptableOrUnknown(data['expires_at']!, _expiresAtMeta),
      );
    } else if (isInserting) {
      context.missing(_expiresAtMeta);
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
      clientId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}client_id'],
          )!,
      tokenEndpoint:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}token_endpoint'],
          )!,
      accessToken:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}access_token'],
          )!,
      refreshToken:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}refresh_token'],
          )!,
      expiresAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}expires_at'],
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
  final String clientId;
  final String tokenEndpoint;
  final String accessToken;
  final String refreshToken;
  final DateTime expiresAt;
  final bool tls;
  final bool allowInsecure;
  const ServerInfoData({
    required this.id,
    required this.url,
    required this.clientId,
    required this.tokenEndpoint,
    required this.accessToken,
    required this.refreshToken,
    required this.expiresAt,
    required this.tls,
    required this.allowInsecure,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['url'] = Variable<String>(url);
    map['client_id'] = Variable<String>(clientId);
    map['token_endpoint'] = Variable<String>(tokenEndpoint);
    map['access_token'] = Variable<String>(accessToken);
    map['refresh_token'] = Variable<String>(refreshToken);
    map['expires_at'] = Variable<DateTime>(expiresAt);
    map['tls'] = Variable<bool>(tls);
    map['allow_insecure'] = Variable<bool>(allowInsecure);
    return map;
  }

  ServerInfoCompanion toCompanion(bool nullToAbsent) {
    return ServerInfoCompanion(
      id: Value(id),
      url: Value(url),
      clientId: Value(clientId),
      tokenEndpoint: Value(tokenEndpoint),
      accessToken: Value(accessToken),
      refreshToken: Value(refreshToken),
      expiresAt: Value(expiresAt),
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
      clientId: serializer.fromJson<String>(json['clientId']),
      tokenEndpoint: serializer.fromJson<String>(json['tokenEndpoint']),
      accessToken: serializer.fromJson<String>(json['accessToken']),
      refreshToken: serializer.fromJson<String>(json['refreshToken']),
      expiresAt: serializer.fromJson<DateTime>(json['expiresAt']),
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
      'clientId': serializer.toJson<String>(clientId),
      'tokenEndpoint': serializer.toJson<String>(tokenEndpoint),
      'accessToken': serializer.toJson<String>(accessToken),
      'refreshToken': serializer.toJson<String>(refreshToken),
      'expiresAt': serializer.toJson<DateTime>(expiresAt),
      'tls': serializer.toJson<bool>(tls),
      'allowInsecure': serializer.toJson<bool>(allowInsecure),
    };
  }

  ServerInfoData copyWith({
    String? id,
    String? url,
    String? clientId,
    String? tokenEndpoint,
    String? accessToken,
    String? refreshToken,
    DateTime? expiresAt,
    bool? tls,
    bool? allowInsecure,
  }) => ServerInfoData(
    id: id ?? this.id,
    url: url ?? this.url,
    clientId: clientId ?? this.clientId,
    tokenEndpoint: tokenEndpoint ?? this.tokenEndpoint,
    accessToken: accessToken ?? this.accessToken,
    refreshToken: refreshToken ?? this.refreshToken,
    expiresAt: expiresAt ?? this.expiresAt,
    tls: tls ?? this.tls,
    allowInsecure: allowInsecure ?? this.allowInsecure,
  );
  ServerInfoData copyWithCompanion(ServerInfoCompanion data) {
    return ServerInfoData(
      id: data.id.present ? data.id.value : this.id,
      url: data.url.present ? data.url.value : this.url,
      clientId: data.clientId.present ? data.clientId.value : this.clientId,
      tokenEndpoint:
          data.tokenEndpoint.present
              ? data.tokenEndpoint.value
              : this.tokenEndpoint,
      accessToken:
          data.accessToken.present ? data.accessToken.value : this.accessToken,
      refreshToken:
          data.refreshToken.present
              ? data.refreshToken.value
              : this.refreshToken,
      expiresAt: data.expiresAt.present ? data.expiresAt.value : this.expiresAt,
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
          ..write('clientId: $clientId, ')
          ..write('tokenEndpoint: $tokenEndpoint, ')
          ..write('accessToken: $accessToken, ')
          ..write('refreshToken: $refreshToken, ')
          ..write('expiresAt: $expiresAt, ')
          ..write('tls: $tls, ')
          ..write('allowInsecure: $allowInsecure')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    url,
    clientId,
    tokenEndpoint,
    accessToken,
    refreshToken,
    expiresAt,
    tls,
    allowInsecure,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ServerInfoData &&
          other.id == this.id &&
          other.url == this.url &&
          other.clientId == this.clientId &&
          other.tokenEndpoint == this.tokenEndpoint &&
          other.accessToken == this.accessToken &&
          other.refreshToken == this.refreshToken &&
          other.expiresAt == this.expiresAt &&
          other.tls == this.tls &&
          other.allowInsecure == this.allowInsecure);
}

class ServerInfoCompanion extends UpdateCompanion<ServerInfoData> {
  final Value<String> id;
  final Value<String> url;
  final Value<String> clientId;
  final Value<String> tokenEndpoint;
  final Value<String> accessToken;
  final Value<String> refreshToken;
  final Value<DateTime> expiresAt;
  final Value<bool> tls;
  final Value<bool> allowInsecure;
  final Value<int> rowid;
  const ServerInfoCompanion({
    this.id = const Value.absent(),
    this.url = const Value.absent(),
    this.clientId = const Value.absent(),
    this.tokenEndpoint = const Value.absent(),
    this.accessToken = const Value.absent(),
    this.refreshToken = const Value.absent(),
    this.expiresAt = const Value.absent(),
    this.tls = const Value.absent(),
    this.allowInsecure = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ServerInfoCompanion.insert({
    this.id = const Value.absent(),
    required String url,
    required String clientId,
    required String tokenEndpoint,
    required String accessToken,
    required String refreshToken,
    required DateTime expiresAt,
    this.tls = const Value.absent(),
    this.allowInsecure = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : url = Value(url),
       clientId = Value(clientId),
       tokenEndpoint = Value(tokenEndpoint),
       accessToken = Value(accessToken),
       refreshToken = Value(refreshToken),
       expiresAt = Value(expiresAt);
  static Insertable<ServerInfoData> custom({
    Expression<String>? id,
    Expression<String>? url,
    Expression<String>? clientId,
    Expression<String>? tokenEndpoint,
    Expression<String>? accessToken,
    Expression<String>? refreshToken,
    Expression<DateTime>? expiresAt,
    Expression<bool>? tls,
    Expression<bool>? allowInsecure,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (url != null) 'url': url,
      if (clientId != null) 'client_id': clientId,
      if (tokenEndpoint != null) 'token_endpoint': tokenEndpoint,
      if (accessToken != null) 'access_token': accessToken,
      if (refreshToken != null) 'refresh_token': refreshToken,
      if (expiresAt != null) 'expires_at': expiresAt,
      if (tls != null) 'tls': tls,
      if (allowInsecure != null) 'allow_insecure': allowInsecure,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ServerInfoCompanion copyWith({
    Value<String>? id,
    Value<String>? url,
    Value<String>? clientId,
    Value<String>? tokenEndpoint,
    Value<String>? accessToken,
    Value<String>? refreshToken,
    Value<DateTime>? expiresAt,
    Value<bool>? tls,
    Value<bool>? allowInsecure,
    Value<int>? rowid,
  }) {
    return ServerInfoCompanion(
      id: id ?? this.id,
      url: url ?? this.url,
      clientId: clientId ?? this.clientId,
      tokenEndpoint: tokenEndpoint ?? this.tokenEndpoint,
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
      expiresAt: expiresAt ?? this.expiresAt,
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
    if (clientId.present) {
      map['client_id'] = Variable<String>(clientId.value);
    }
    if (tokenEndpoint.present) {
      map['token_endpoint'] = Variable<String>(tokenEndpoint.value);
    }
    if (accessToken.present) {
      map['access_token'] = Variable<String>(accessToken.value);
    }
    if (refreshToken.present) {
      map['refresh_token'] = Variable<String>(refreshToken.value);
    }
    if (expiresAt.present) {
      map['expires_at'] = Variable<DateTime>(expiresAt.value);
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
          ..write('clientId: $clientId, ')
          ..write('tokenEndpoint: $tokenEndpoint, ')
          ..write('accessToken: $accessToken, ')
          ..write('refreshToken: $refreshToken, ')
          ..write('expiresAt: $expiresAt, ')
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
      required String clientId,
      required String tokenEndpoint,
      required String accessToken,
      required String refreshToken,
      required DateTime expiresAt,
      Value<bool> tls,
      Value<bool> allowInsecure,
      Value<int> rowid,
    });
typedef $$ServerInfoTableUpdateCompanionBuilder =
    ServerInfoCompanion Function({
      Value<String> id,
      Value<String> url,
      Value<String> clientId,
      Value<String> tokenEndpoint,
      Value<String> accessToken,
      Value<String> refreshToken,
      Value<DateTime> expiresAt,
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

  ColumnFilters<String> get clientId => $composableBuilder(
    column: $table.clientId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tokenEndpoint => $composableBuilder(
    column: $table.tokenEndpoint,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get accessToken => $composableBuilder(
    column: $table.accessToken,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get refreshToken => $composableBuilder(
    column: $table.refreshToken,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get expiresAt => $composableBuilder(
    column: $table.expiresAt,
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

  ColumnOrderings<String> get clientId => $composableBuilder(
    column: $table.clientId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tokenEndpoint => $composableBuilder(
    column: $table.tokenEndpoint,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get accessToken => $composableBuilder(
    column: $table.accessToken,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get refreshToken => $composableBuilder(
    column: $table.refreshToken,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get expiresAt => $composableBuilder(
    column: $table.expiresAt,
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

  GeneratedColumn<String> get clientId =>
      $composableBuilder(column: $table.clientId, builder: (column) => column);

  GeneratedColumn<String> get tokenEndpoint => $composableBuilder(
    column: $table.tokenEndpoint,
    builder: (column) => column,
  );

  GeneratedColumn<String> get accessToken => $composableBuilder(
    column: $table.accessToken,
    builder: (column) => column,
  );

  GeneratedColumn<String> get refreshToken => $composableBuilder(
    column: $table.refreshToken,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get expiresAt =>
      $composableBuilder(column: $table.expiresAt, builder: (column) => column);

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
                Value<String> clientId = const Value.absent(),
                Value<String> tokenEndpoint = const Value.absent(),
                Value<String> accessToken = const Value.absent(),
                Value<String> refreshToken = const Value.absent(),
                Value<DateTime> expiresAt = const Value.absent(),
                Value<bool> tls = const Value.absent(),
                Value<bool> allowInsecure = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ServerInfoCompanion(
                id: id,
                url: url,
                clientId: clientId,
                tokenEndpoint: tokenEndpoint,
                accessToken: accessToken,
                refreshToken: refreshToken,
                expiresAt: expiresAt,
                tls: tls,
                allowInsecure: allowInsecure,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                required String url,
                required String clientId,
                required String tokenEndpoint,
                required String accessToken,
                required String refreshToken,
                required DateTime expiresAt,
                Value<bool> tls = const Value.absent(),
                Value<bool> allowInsecure = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ServerInfoCompanion.insert(
                id: id,
                url: url,
                clientId: clientId,
                tokenEndpoint: tokenEndpoint,
                accessToken: accessToken,
                refreshToken: refreshToken,
                expiresAt: expiresAt,
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
