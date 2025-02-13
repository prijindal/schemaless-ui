// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:schemaless/pages/newserver/index.dart' as _i1;
import 'package:schemaless/pages/servers/servers_screen.dart' as _i2;

/// generated route for
/// [_i1.NewServerScreen]
class NewServerRoute extends _i3.PageRouteInfo<NewServerRouteArgs> {
  NewServerRoute({_i4.Key? key, List<_i3.PageRouteInfo>? children})
    : super(
        NewServerRoute.name,
        args: NewServerRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'NewServerRoute';

  static _i3.PageInfo page = _i3.PageInfo(
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

  final _i4.Key? key;

  @override
  String toString() {
    return 'NewServerRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.ServersScreen]
class ServersRoute extends _i3.PageRouteInfo<void> {
  const ServersRoute({List<_i3.PageRouteInfo>? children})
    : super(ServersRoute.name, initialChildren: children);

  static const String name = 'ServersRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.ServersScreen();
    },
  );
}
