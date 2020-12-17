import 'package:flutter/material.dart';
import 'package:giganet/home/widget/slider.dart';

class HomeDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Image.asset('assets/logo/logo.png', fit: BoxFit.cover),
        leading: Icon(
          Icons.wifi_tethering,
          size: 35.0,
        ),
        title: Text('Giga Net'),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          // // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            titleBar('Tv Channles'),
            SizedBox(
              height: 10.0,
            ),
            HomeSlider(),
            titleBar('Websites'),
            SizedBox(
              height: 10.0,
            ),
            HomeSlider(),
            titleBar('FTP Server'),
            SizedBox(
              height: 10.0,
            ),
            HomeSlider(),
          ],
        ),
      ),
    );
  }

  Container titleBar(String title) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.only(left: 10.0, top: 10.0),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.red[500]),
      ),
    );
  }
}
