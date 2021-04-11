import 'package:flutter/material.dart';
import 'package:isp_billing_design/card_design/my_raised_gradient_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            MyRaisedGradientButton(
              onPressed: () => print('clicked'),
              height: 100,
              cardCounter: '10',
              cardTitle: 'Total User',
              gradient: LinearGradient(
                colors: <Color>[
                  Color.fromRGBO(117, 117, 237, 1),
                  // Color.fromRGBO(185, 111, 255, 1),
                  // Color.fromRGBO(180, 107, 255, 1),
                  Color.fromRGBO(206, 39, 249, 1),
                ],
              ),
            ),
            MyRaisedGradientButton(
              onPressed: () => print('clicked'),
              height: 100,
              cardCounter: '10',
              cardTitle: 'Total User',
              gradient: LinearGradient(
                colors: <Color>[
                  Color.fromRGBO(254, 126, 150, 1),
                  Color.fromRGBO(254, 126, 150, 1)
                ],
              ),
            ),
            MyRaisedGradientButton(
              onPressed: () => print('clicked'),
              height: 100,
              cardCounter: '10',
              cardTitle: 'Total User',
              gradient: LinearGradient(
                colors: <Color>[
                  Color.fromRGBO(154, 226, 219, 1),
                  Color.fromRGBO(32, 208, 182, 1)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
