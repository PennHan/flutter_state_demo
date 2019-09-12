import 'package:flutter/material.dart';

import 'inherited_count_Widget.dart';
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
            title: Text('InheritedWidget Top Screen'),
          ),
          body: Center(
            child: Text(
              InheritedCountWidget.of(context).count.toString(),
              style: TextStyle(fontSize: 48.0),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return UnderScreen(title: "InheritedWidget Under Screen",);
              }));
            },
            child: Icon(Icons.forward),
          ),
        );
  }

}