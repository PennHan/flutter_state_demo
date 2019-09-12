import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'states/count_state.dart';
import 'under_screen.dart';

/// desc:
/// author: hanpeidong
/// time: 2019/9/12
class TopScreen extends StatefulWidget {
  @override
  _TopScreenState createState() => _TopScreenState();
}

class _TopScreenState extends State<TopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Screen'),
      ),
      body: Center(
        child: StoreConnector<CountState,int>(
          converter: (store) => store.state.count,
          builder: (context, count) {
            return Text(
              count.toString(),
              style: Theme.of(context).textTheme.display1,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
            return UnderScreen();
          }));
        },
        child: Icon(Icons.forward),
      ),
    );
  }
}