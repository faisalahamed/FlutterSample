import 'package:flutter/material.dart';

class GuestLayout extends StatelessWidget {
  final Widget child;
  GuestLayout({this.child});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guest'),
      ),
      body: child,
    );
  }
}
