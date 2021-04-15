import 'package:flutter/material.dart';
import 'package:simple_layout/pages/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: DashboardPage(),
    );
  }
}
