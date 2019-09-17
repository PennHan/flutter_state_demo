
import 'package:flutter/material.dart';

import 'count_bloc.dart';

/// desc:
/// author: hanpeidong
/// time: 2019/9/17
class BlocProvider extends InheritedWidget {
  final CountBLoC bLoC = CountBLoC();

  BlocProvider({Key key, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_) => true;

  static CountBLoC of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(BlocProvider) as BlocProvider).bLoC;
}