import 'package:flutter/material.dart';

typedef WidgetFromStringFunction = Widget Function(String value);

typedef WidgetFromContextFunction = Widget Function(BuildContext context);
typedef WidgetFromContextAndArgumentsFunction = Widget Function(BuildContext context, {dynamic arguments});

typedef StringFromStringFunction = String Function(String param);

typedef VoidFromStringFunction = void Function(String param);
typedef VoidFromRouteFunction = void Function(Route param);
typedef VoidFromMapFunction = void Function(MapStringDynamic param);

typedef ListFromStringFunction = List<dynamic> Function(String param);

typedef VoidFunction = void Function();
typedef IntFunction = void Function(int param);
typedef BoolCallback = void Function(bool param);
typedef FutureFromVoidCallback = Future Function();

typedef ObjectFactory = Object Function();
typedef VoidFromIntObjectFunction = void Function(int index, Object item);
typedef VoidFromObjectFunction = void Function(Object item);
typedef VoidFromListObjectsFunction = void Function(List<dynamic> items);

abstract class MapStringDynamic implements Map<String, dynamic> {
  dynamic data;
}