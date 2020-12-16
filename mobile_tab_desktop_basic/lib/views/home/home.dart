import 'package:flutter/material.dart';
import 'package:mobile_tab_desktop_basic/views/home/home_desktop.dart';
import 'package:mobile_tab_desktop_basic/views/home/home_mobile.dart';
import 'package:mobile_tab_desktop_basic/views/home/home_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: HomeDesktop(),
      tablet: HomeTablet(),
      mobile: HomeMobile(),
    );
  }
}
