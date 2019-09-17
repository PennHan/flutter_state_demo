import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

/// desc:
/// author: hanpeidong
/// time: 2019/9/16
Effect<CounterState> buildEffect() {
  return combineEffects(<Object, Effect<CounterState>>{
    CounterAction.onAdd: _onAdd,
  });
}

void _onAdd(Action action, Context<CounterState> ctx) {
  print("_onAdd");
  ctx.dispatch(CounterActionCreator.add());
}