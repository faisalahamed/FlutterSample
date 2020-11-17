import 'package:blokSample/bloc/price.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'bloc/cart.dart';

class Product2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product 2'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer<CartProvider>(builder: (contex, cartProvider, child) {
            print('cart rendered');
            return Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Counter: ${cartProvider.counter}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32.0,
                        color: Colors.green),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  RaisedButton(
                    onPressed: () {
                      cartProvider.increment();
                    },
                    child: Text('Increment'),
                  ),
                  RaisedButton(
                    onPressed: () {
                      cartProvider.decrement();
                    },
                    child: Text('Decrement'),
                  ),
                ],
              ),
            );
          }),
          SizedBox(
            height: 30.0,
          ),
          Consumer<PriceProvider>(builder: (contex, priceProvider, child) {
            print('price rendered');
            return Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Counter: ${priceProvider.price}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32.0,
                        color: Colors.red),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  RaisedButton(
                    onPressed: () {
                      priceProvider.increment();
                    },
                    child: Text('Increment'),
                  ),
                  RaisedButton(
                    onPressed: () {
                      priceProvider.decrement();
                    },
                    child: Text('Decrement'),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
