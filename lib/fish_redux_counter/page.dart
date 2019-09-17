import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'state.dart';
import 'reducer.dart';
import 'view.dart';

/// desc:
/// author: hanpeidong
/// time: 2019/9/16
class CounterFishReduxPage extends Page<CounterState, Map<String, dynamic>> {
  CounterFishReduxPage()
      : super(
    initState: initState,
    effect: buildEffect(),
    reducer: buildReducer(),
    view: buildView,
  );
}