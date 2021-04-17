import 'package:flutter/material.dart';
import 'package:simple_layout/layout/layout.dart';

import 'package:dashboard_button/dashboard_button.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutPage(dashboard(context));
  }

  Widget dashboard(context) {
    return Padding(
      padding: EdgeInsets.all(0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: MyRaisedGradientButton(
                  onPressed: () => print('clicked'),
                  height: 100,
                  cardCounter: '10',
                  cardTitle: 'Online',
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color.fromRGBO(117, 117, 237, 1),
                      Color.fromRGBO(206, 39, 249, 1),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: MyRaisedGradientButton(
                  onPressed: () => print('clicked'),
                  height: 100,
                  cardCounter: '10',
                  cardTitle: 'Online',
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color.fromRGBO(117, 117, 237, 1),
                      Color.fromRGBO(206, 39, 249, 1),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: MyRaisedGradientButton(
                  onPressed: () => print('clicked'),
                  height: 100,
                  cardCounter: '10',
                  cardTitle: 'Online',
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color.fromRGBO(117, 117, 237, 1),
                      Color.fromRGBO(206, 39, 249, 1),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
