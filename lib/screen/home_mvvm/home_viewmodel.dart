import 'package:mvvm/services/counter_serv.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  CounterServese counterServese = CounterServese();
  int get counter => counterServese.counter;

  addValue() {
    counterServese.updateTitle();
    rebuildUi();
  }
}
