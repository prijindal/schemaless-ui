// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/foundation.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:schemaless/pages/newserver/index.dart' as _i1;
import 'package:schemaless/pages/server/server_screen.dart' as _i2;
import 'package:schemaless/pages/servers/servers_screen.dart' as _i3;

/// generated route for
/// [_i1.NewServerScreen]
class NewServerRoute extends _i4.PageRouteInfo<NewServerRouteArgs> {
  NewServerRoute({_i5.Key? key, List<_i4.PageRouteInfo>? children})
    : super(
        NewServerRoute.name,
        args: NewServerRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'NewServerRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<NewServerRouteArgs>(
        orElse: () => const NewServerRouteArgs(),
      );
      return _i1.NewServerScreen(key: args.key);
    },
  );
}

class NewServerRouteArgs {
  const NewServerRouteArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'NewServerRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! NewServerRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i2.ServerScreen]
class ServerRoute extends _i4.PageRouteInfo<ServerRouteArgs> {
  ServerRoute({
    _i6.Key? key,
    required String serverId,
    List<_i4.PageRouteInfo>? children,
  }) : super(
         ServerRoute.name,
         args: ServerRouteArgs(key: key, serverId: serverId),
         rawPathParams: {'serverId': serverId},
         initialChildren: children,
       );

  static const String name = 'ServerRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ServerRouteArgs>(
        orElse:
            () => ServerRouteArgs(serverId: pathParams.getString('serverId')),
      );
      return _i2.ServerScreen(key: args.key, serverId: args.serverId);
    },
  );
}

class ServerRouteArgs {
  const ServerRouteArgs({this.key, required this.serverId});

  final _i6.Key? key;

  final String serverId;

  @override
  String toString() {
    return 'ServerRouteArgs{key: $key, serverId: $serverId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ServerRouteArgs) return false;
    return key == other.key && serverId == other.serverId;
  }

  @override
  int get hashCode => key.hashCode ^ serverId.hashCode;
}

/// generated route for
/// [_i3.ServersScreen]
class ServersRoute extends _i4.PageRouteInfo<void> {
  const ServersRoute({List<_i4.PageRouteInfo>? children})
    : super(ServersRoute.name, initialChildren: children);

  static const String name = 'ServersRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.ServersScreen();
    },
  );
}
