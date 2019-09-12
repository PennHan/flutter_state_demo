import 'package:flutter/material.dart';

import 'count_model.dart';

/// desc:
/// author: hanpeidong
/// time: 2019/9/12
class InheritedCountWidget extends InheritedWidget{

  InheritedCountWidget({Key key, this.countModel, Widget child})
      : super(key: key, child: child);

  final CountModel countModel;

  @override
  bool updateShouldNotify(InheritedCountWidget oldWidget) {
    return oldWidget.countModel != countModel;
  }

  static CountModel of(BuildContext context) {
    final InheritedCountWidget user =
    context.inheritFromWidgetOfExactType(InheritedCountWidget);
    return user.countModel;
  }
}