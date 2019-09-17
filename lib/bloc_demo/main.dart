import 'package:flutter/material.dart';
//单例
//import 'package:bloc_demo/single_global_instance/top_page.dart';
//scoped
//import 'package:bloc_demo/scoped/top_page.dart';
//import 'package:bloc_demo/scoped/blocs/bloc_provider.dart';


import 'rxdart/blocs/bloc_provider.dart';
import 'rxdart/top_screen.dart';

/// desc:
/// author: hanpeidong
/// time: 2019/9/17
void main() => runApp(MyApp());

///**
// * scoped 入口
// */
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return BlocProvider(
//      child: MaterialApp(
//        title: 'scoped',
//        theme: ThemeData.dark(),
//        home: TopPage(),
//      ),
//    );
//  }
//}

/**
 * single_global_instance 入口
 */
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//        title: 'single_global_instance',
//        theme: ThemeData.dark(),
//        home: TopPage(),
//     );
//  }
//}

/**
 * rxdart 入口
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: MaterialApp(
        title: 'rxdart',
        theme: ThemeData.dark(),
        home: TopPage(),
      ),
    );
  }
}