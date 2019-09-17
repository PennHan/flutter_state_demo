import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

/// desc:
/// author: hanpeidong
/// time: 2019/9/16
Widget buildView(
    CounterState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text('CounterFishRedux'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            state.count.toString(),
          )
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      //发送的action到了Effect中处理
      onPressed: () => dispatch(CounterActionCreator.onAdd()),
      //也可以发action到reducer中处理
      //onPressed: () => dispatch(CounterActionCreator.add()),
      tooltip: 'add',
      child: Icon(Icons.add),
    ),
  );
}