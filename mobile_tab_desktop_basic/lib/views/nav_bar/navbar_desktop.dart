import 'package:flutter/material.dart';

class NavbarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.grey[300],
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(Icons.android),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text('Desktop'),
              SizedBox(
                width: 60,
              ),
              Text('Home'),
            ],
          )
        ],
      ),
    );
  }
}
