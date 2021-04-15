import 'package:flutter/material.dart';

class LayoutMobile extends StatelessWidget {
  final Widget child;

  LayoutMobile(this.child);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}
