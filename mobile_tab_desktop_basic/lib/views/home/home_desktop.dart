import 'package:flutter/material.dart';

class HomeDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      color: Colors.black38,
      child: GridView.count(
        crossAxisCount: 4,
        children: List.generate(50, (index) {
          return Container(
            height: 50,
            child: Card(
              color: Colors.blue[100],
            ),
          );
        }),
      ),
    );
  }
}
