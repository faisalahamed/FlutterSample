import 'package:flutter/cupertino.dart';

class CartProvider extends ChangeNotifier {
  int counter = 0;

  increment() {
    counter = counter + 1;
    notifyListeners();
  }

  decrement() {
    counter = counter - 1;
    notifyListeners();
  }
}
