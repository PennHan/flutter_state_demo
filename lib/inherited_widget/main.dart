/// desc:
/// author: hanpeidong
/// time: 2019/9/12
import 'package:flutter/material.dart';
import 'count_model.dart';
import 'inherited_count_Widget.dart';
import 'top_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  CountModel _countModel = CountModel();

  @override
  Widget build(BuildContext context) {
    // 放顶层代表全局状态
    return InheritedCountWidget(
      countModel: _countModel,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TopScreen(),
      ),
    );
  }
}
