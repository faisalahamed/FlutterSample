import 'package:flutter/material.dart';
import 'package:mobile_tab_desktop_basic/widgets/main_layout.dart';

void main() {
  // setUpLocator();
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),
      ),
      home: MainLayout(),
    );
  }
}
