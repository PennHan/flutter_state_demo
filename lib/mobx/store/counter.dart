import 'package:mobx/mobx.dart';

part 'counter.g.dart';

/// desc:
/// author: hanpeidong
/// time: 2019/9/16
class Counter = CounterBase with _$Counter;

/// 创建counter.dart
/// 包含 part 'counter.g.dart';
/// 包含 class Counter = CounterBase with _$Counter;
/// 加入一个可观察属性 [count]
/// 编写相关方法
/// 命令行运行 flutter packages pub run build_runner build
/// 如果需要更改counter.dart时实时更新 counter.g.dart 可以命令行输入
/// flutter packages pub run build_runner watch

/// 全局 counter 对象
final Counter counter = Counter();

abstract class CounterBase implements Store {
  @observable
  int count = 0;

  @action
  void add() {
    count++;
  }

  @action
  void minus() {
    count--;
  }

  @action
  void setCount(int value) {
    this.count = value;
  }

  @computed
  bool get isEven => count % 2 == 0;
}