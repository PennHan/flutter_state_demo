/// desc: 
/// author: hanpeidong
/// time: 2019/9/12
import 'package:flutter/material.dart';
import 'package:flutter_state_demo/scoped_model/top_screen.dart';
import 'package:scoped_model/scoped_model.dart';

import 'count_model.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  //创建顶层状态
  CountModel countModel = CountModel();

  @override
  Widget build(BuildContext context) {
    return ScopedModel<CountModel>(
      model: countModel,
      child: new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TopScreen(),
      ),
    );
  }
}