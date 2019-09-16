// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars
/// desc:
/// author: hanpeidong
/// time: 2019/9/16
mixin _$Counter on CounterBase, Store {
  Computed<bool> _$isEvenComputed;

  @override
  bool get isEven =>
      (_$isEvenComputed ??= Computed<bool>(() => super.isEven)).value;

  final _$countAtom = Atom(name: 'CounterBase.count');

  @override
  int get count {
    _$countAtom.reportObserved();
    return super.count;
  }

  @override
  set count(int value) {
    _$countAtom.context.checkIfStateModificationsAreAllowed(_$countAtom);
    super.count = value;
    _$countAtom.reportChanged();
  }

  final _$CounterBaseActionController = ActionController(name: 'CounterBase');

  @override
  void add() {
    final _$actionInfo = _$CounterBaseActionController.startAction();
    try {
      return super.add();
    } finally {
      _$CounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void minus() {
    final _$actionInfo = _$CounterBaseActionController.startAction();
    try {
      return super.minus();
    } finally {
      _$CounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCount(int value) {
    final _$actionInfo = _$CounterBaseActionController.startAction();
    try {
      return super.setCount(value);
    } finally {
      _$CounterBaseActionController.endAction(_$actionInfo);
    }
  }
}