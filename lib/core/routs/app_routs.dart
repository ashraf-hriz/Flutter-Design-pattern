

import 'package:flutter/material.dart';

class AppRouter{
  AppRouter._();
  static final navigatorKey = GlobalKey<NavigatorState>();
}

void pushNamedAndRemoveUntil(context, route, {arguments}) {
  Navigator.of(context).pushNamedAndRemoveUntil(route, ModalRoute.withName('/'),
      arguments: arguments);
}

void pushNamed(context, route, {arguments}) {
  Navigator.of(context).pushNamed(route, arguments: arguments);
}