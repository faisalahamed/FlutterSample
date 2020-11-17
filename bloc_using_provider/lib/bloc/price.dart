import 'package:flutter/cupertino.dart';

class PriceProvider extends ChangeNotifier {
  int price = 0;

  increment() {
    price = price + 1;
    notifyListeners();
  }

  decrement() {
    price = price - 1;
    notifyListeners();
  }
}
