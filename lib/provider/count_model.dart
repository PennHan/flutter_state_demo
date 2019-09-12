import 'package:flutter/material.dart';

/// desc:
/// author: hanpeidong
/// time: 2019/9/12
class CounterModel with ChangeNotifier {
  int _count = 0;
  int get value => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}