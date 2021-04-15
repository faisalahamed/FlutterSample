import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simple_layout/layout/layout_desktop.dart';
import 'package:simple_layout/layout/layout_mobile.dart';
import 'package:simple_layout/layout/layout_tablet.dart';

class LayoutPage extends StatelessWidget {
  final Widget child;
  LayoutPage(this.child);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: LayoutDesktop(child),
      tablet: LayoutTablet(child),
      mobile: LayoutMobile(child),
    );
  }
}
