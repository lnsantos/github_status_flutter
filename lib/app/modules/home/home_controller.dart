import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _AppBase with _$HomeController;

abstract class _AppBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
