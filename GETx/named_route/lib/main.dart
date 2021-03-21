import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:named_route/auth/login.dart';
import 'package:named_route/dashboard/dashboard.dart';
import 'package:named_route/error_page/error_page.dart';
import 'package:named_route/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx Named ROute',
      defaultTransition: Transition.rightToLeft,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/login', page: () => LoginPage()),
        GetPage(
          name: '/dashboard',
          page: () => Dashboard(),
          transition: Transition.zoom,
        ),
        GetPage(name: '/dashboard/:token', page: () => Dashboard()),
      ],
      unknownRoute: GetPage(name: '/unknown', page: () => ErrorPage()),
      home: HomePage(),
    );
  }
}
