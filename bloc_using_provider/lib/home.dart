import 'package:blokSample/bloc/cart.dart';
import 'package:blokSample/bloc/price.dart';
import 'package:blokSample/procuct2.dart';
import 'package:blokSample/product1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Consumer<CartProvider>(
              builder: (context, _cart, child) {
                return Text(
                  'Cart Counter: ${_cart.counter}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32.0,
                      color: Colors.red),
                );
              },
            ),
            Consumer<PriceProvider>(
              builder: (context, _price, child) {
                return Text(
                  'Cart Counter: ${_price.price}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32.0,
                      color: Colors.green),
                );
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Product1()),
                );
              },
              child: Text('Go to Product 1'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Product2()),
                );
              },
              child: Text('Go to Product 2'),
            ),
          ],
        ),
      ),
    );
  }
}
