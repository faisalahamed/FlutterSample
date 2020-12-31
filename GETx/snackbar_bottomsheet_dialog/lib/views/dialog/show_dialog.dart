import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowDialog extends StatefulWidget {
  const ShowDialog({
    Key key,
  }) : super(key: key);

  @override
  _ShowDialogState createState() => _ShowDialogState();
}

class _ShowDialogState extends State<ShowDialog> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text('Show Dialog'),
        onPressed: () {
          Get.defaultDialog(
            backgroundColor: Colors.green[200],
            title: "Dialog Title",
            titleStyle: TextStyle(fontSize: 29.0, fontWeight: FontWeight.bold),
            // middleText: "Are you ok with this?",
            content: Row(
              children: [
                buildInputFrom('Name', 'Enter name Here', nameController),
                buildInputFrom('Email', 'Enter Email Here', emailController),
              ],
            ),
            // // 3 ways of cancel and confirm
            // textCancel: 'Default Cancel',
            // cancelTextColor: Colors.black,
            // textConfirm: 'default Confirm',
            // confirmTextColor: Colors.white,
            // buttonColor: Colors.green,

            // cancel: RaisedButton(
            //   onPressed: () {
            //     print(nameController.text);
            //     print(emailController.text);
            //   },
            //   child: Text('Yes'),
            // ),

            actions: [
              RaisedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('Cancel'),
              ),
              RaisedButton(
                onPressed: () {
                  print(nameController.text);
                  print(emailController.text);
                },
                child: Text('Confirm'),
              ),
            ],
          );
        },
      ),
    );
  }

  Expanded buildInputFrom(
      String titleText, String hintText, TextEditingController _controller) {
    return Expanded(
      child: TextFormField(
        controller: _controller,
        keyboardType: TextInputType.number,
        maxLength: 10,
        decoration: InputDecoration(
          counterText: "",
          contentPadding: EdgeInsets.fromLTRB(16, 0, 16, 0),
          labelText: titleText,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.black, fontSize: 12),
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: Colors.blue)),
          filled: true,
        ),
      ),
    );
  }
}
