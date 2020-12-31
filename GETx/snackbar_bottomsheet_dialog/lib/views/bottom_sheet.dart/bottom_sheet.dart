import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text('Show Bottom Sheet'),
        onPressed: () {
          Get.bottomSheet(
            Container(
              child: Wrap(
                children: [
                  ListTile(
                    leading: Icon(Icons.wb_sunny_outlined),
                    title: Text('Light Theme'),
                    onTap: () {
                      Get.changeTheme(ThemeData.light());
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.wb_sunny),
                    title: Text('Dark Theme'),
                    onTap: () {
                      Get.changeTheme(ThemeData.dark());
                    },
                  )
                ],
              ),
            ),
            backgroundColor: Colors.pink[200],
            barrierColor: Colors.white10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: BorderSide(
                color: Colors.pink,
                style: BorderStyle.solid,
                width: 5.0,
              ),
            ),
            enableDrag: true,
          );
        },
      ),
    );
  }
}
