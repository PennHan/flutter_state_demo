import 'package:scoped_model/scoped_model.dart';

/// desc:
/// author: hanpeidong
/// time: 2019/9/12
class CountModel extends Model{
  int _count = 0;
  get count => _count;

  void increment(){
    _count++;
    notifyListeners();
  }

  CountModel of(context) =>
      ScopedModel.of<CountModel>(context);
}