import 'package:flutter/material.dart';
import 'package:simple_layout/layout/layout.dart';

import 'package:dashboard_button/dashboard_button.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutPage(dashboard());
  }

  Widget dashboard() {
    int item = 100;
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MyRaisedGradientButton(
          onPressed: () => print('clicked'),
          height: 100,
          cardCounter: '10',
          cardTitle: 'Total User',
          gradient: LinearGradient(
            colors: <Color>[
              Color.fromRGBO(117, 117, 237, 1),
              Color.fromRGBO(206, 39, 249, 1),
            ],
          ),
        ),
        MyRaisedGradientButton(
          onPressed: () => print('clicked'),
          height: 100,
          cardCounter: '10',
          cardTitle: 'Online User',
          gradient: LinearGradient(
            colors: <Color>[
              Color.fromRGBO(117, 117, 237, 1),
              Color.fromRGBO(206, 39, 249, 1),
            ],
          ),
        ),
      ],
    );
  }
}
