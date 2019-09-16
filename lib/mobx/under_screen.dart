import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'store/counter.dart';
/// desc:
/// author: hanpeidong
/// time: 2019/9/16
class UnderScreen extends StatefulWidget {
  @override
  _UnderScreenState createState() => _UnderScreenState();
}

class _UnderScreenState extends State<UnderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second page'),
      ),
      body: Center(
        child: Observer(
          builder: (_) => Text('count is ${counter.count}', style: TextStyle(fontSize: 30)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: counter.add,
      ),
    );
  }
}