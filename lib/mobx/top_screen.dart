import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'store/counter.dart';
/// desc:
/// author: hanpeidong
/// time: 2019/9/16
class TopScreen extends StatefulWidget {
  @override
  _TopScreenState createState() => _TopScreenState();
}

class _TopScreenState extends State<TopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mobx Demo'),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('计算结果:'),
            // 将要观察的组件用Observer包裹
            Observer(builder: (_) => Text('${counter.count}')),
            Text('是否是偶数:'),
            Observer(builder: (_) => Text('${counter.isEven}')),
            SizedBox(height: 100),
            RaisedButton(
              child: Text('加'),
              onPressed: counter.add,
            ),
            RaisedButton(
              child: Text('减'),
              onPressed: counter.minus,
            ),
            RaisedButton(child: Text('页面跳转'), onPressed: () => Navigator.pushNamed(context, '/second')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.setCount(0);
        },
        tooltip: '归零',
        child: Text('归零'),
      ),
    );
  }
}