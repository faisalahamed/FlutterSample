
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MySnackBar extends StatelessWidget {
  const MySnackBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[500],
      child: RaisedButton(
        child: Text('Show Snack Bar'),
        onPressed: () {
          // Get.snackbar('Snackbar Title', 'Snackbar Message Tesxt');
          Get.snackbar(
            'title',
            'message',
            colorText: Colors.black,
            snackPosition: SnackPosition.BOTTOM,
            animationDuration: Duration(milliseconds: 3000),
            backgroundColor: Colors.blue[200],
            maxWidth: MediaQuery.of(context).size.width * .5,
            onTap: (snack) => print('clicked'),
            overlayBlur: 5,
            overlayColor: Colors.black87,
            snackbarStatus: (status) =>
                print('My Snackbar Status::: $status'),
          );
        },
      ),
    );
  }
}
