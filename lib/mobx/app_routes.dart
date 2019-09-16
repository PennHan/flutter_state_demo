import 'package:flutter/material.dart';

import 'under_screen.dart';
/// desc:
/// author: hanpeidong
/// time: 2019/9/16
class AppRoute {
  static final Map<String, WidgetBuilder> routes = {
    '/second': (_) => UnderScreen(),
  };
}