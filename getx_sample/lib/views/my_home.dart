import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/views/snackbar/my_snackbar.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get X Samples'),
      ),
      body: Container(
        color: Colors.amber,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MySnackBar(),
            SizedBox(
              height: 20,
            ),
            Container(
              child: RaisedButton(
                child: Text('Show Dialog'),
                onPressed: () {
                  Get.defaultDialog(
                      title: "Dialog Title",
                      titleStyle: TextStyle(
                          fontSize: 29.0, fontWeight: FontWeight.bold),
                      middleText: "Are you ok with this?",
                      content: Row(),
                      cancel: RaisedButton(
                        onPressed: () {},
                        child: Text('Yes'),
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
