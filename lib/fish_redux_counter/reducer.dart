import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

/// desc:
/// author: hanpeidong
/// time: 2019/9/16
Reducer<CounterState> buildReducer() {
  return asReducer<CounterState>(<Object, Reducer<CounterState>>{
    CounterAction.add: _add,
  });
}

CounterState _add(CounterState state, Action action) {
  final CounterState newState = state.clone();
  newState.count = ++state.count;
  return newState;
}