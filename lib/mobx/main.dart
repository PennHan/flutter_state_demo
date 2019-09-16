
import 'package:flutter/material.dart';
import 'app_routes.dart';
import 'top_screen.dart';
/// desc:
/// author: hanpeidong
/// time: 2019/9/16

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Mobx Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TopScreen(),
      routes: AppRoute.routes,
    );
  }
}