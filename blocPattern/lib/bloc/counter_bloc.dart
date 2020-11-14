import 'package:flutter/cupertino.dart';

class CounterBloc extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  // set setLanguage(String val) {
  //   _lang = val;
  //   notifyListeners();
  // }

  increment() {
    _counter = _counter + 1;
    notifyListeners();
  }

  decrement() {
    _counter = _counter - 1;
    notifyListeners();
  }
}
