import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'states/count_state.dart';

/// desc:
/// author: hanpeidong
/// time: 2019/9/12
class UnderScreen extends StatefulWidget {
  @override
  _UnderScreenState createState() => _UnderScreenState();
}

class _UnderScreenState extends State<UnderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Under Screen'),
      ),
      body: Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            StoreConnector<CountState,int>(
              converter: (store) => store.state.count,
              builder: (context, count) {
                // 缺点：UI视图和Redux数据通用逻辑耦和在一起，无发通过mock数据来对UI进行UT
                return Text(
                  count.toString(),
                  style: Theme.of(context).textTheme.display1,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: StoreConnector<CountState,VoidCallback>(

        converter: (store) {
          return () => store.dispatch(Action.increment);
        },
        builder: (context, callback) {
          return FloatingActionButton(
            onPressed: callback,
            child: Icon(Icons.add),
          );
        },
      ),
    );
  }
}