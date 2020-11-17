import 'package:blokSample/bloc/price.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'bloc/cart.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CartProvider>(
          create: (context) => CartProvider(),
        ),
        ChangeNotifierProvider<PriceProvider>(
          create: (context) => PriceProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        home: Home(),
      ),
    );
  }
}
