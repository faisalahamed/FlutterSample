import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/views/bottom_sheet.dart/bottom_sheet.dart';
import 'package:getx_sample/views/dialog/show_dialog.dart';
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
            ShowDialog(),
              SizedBox(
              height: 20,
            ),
            MyBottomSheet()
          ],
        ),
      ),
    );
  }
}
