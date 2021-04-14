import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  final itemNumber;
  const MyList( this.itemNumber);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('$itemNumber'),
          GestureDetector(
            onTap: () => Navigator.popUntil(
                context, ModalRoute.withName(Navigator.defaultRouteName)),
            child: Text(
              "Home",
            ),
          ),
        ],
      ),
    );
  }
}
