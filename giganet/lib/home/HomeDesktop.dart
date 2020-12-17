import 'package:flutter/material.dart';
import 'package:giganet/data/ftp_list.dart';
import 'package:giganet/data/music_list.dart';
import 'package:giganet/data/radio_list.dart';
import 'package:giganet/data/website_list.dart';
import 'package:giganet/home/widget/slider.dart';

import '../data/tvList.dart';

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
            HomeSlider(tvList),
            titleBar('Websites'),
            SizedBox(
              height: 10.0,
            ),
            HomeSlider(websiteList),
            titleBar('FTP Server'),
            SizedBox(
              height: 10.0,
            ),
            HomeSlider(ftpList),
            titleBar('Music Server'),
            SizedBox(
              height: 10.0,
            ),
            HomeSlider(musicList),
            titleBar('Radio Server'),
            SizedBox(
              height: 10.0,
            ),
            HomeSlider(radioList),
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
