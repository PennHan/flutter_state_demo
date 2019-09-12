import 'package:flutter/material.dart';

import 'count_model.dart';
import 'inherited_count_Widget.dart';

/// desc:
/// author: hanpeidong
/// time: 2019/9/12
class UnderScreen extends StatefulWidget {
  UnderScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _UnderScreenState createState() => new _UnderScreenState();
}

class _UnderScreenState extends State<UnderScreen> {
  @override
  Widget build(BuildContext context) {
    CountModel countModel = InheritedCountWidget.of(context);

    return Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                'You have pushed the button this many times:',
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                "${countModel.count}",
                style: TextStyle(fontSize: 36.0),
              ),
            ],
          ),
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: () {
            countModel.increment();
            setState(() {});
          },
          tooltip: 'Increment',
          child: new Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      );
  }
}