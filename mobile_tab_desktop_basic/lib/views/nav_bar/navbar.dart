import 'package:flutter/material.dart';
import 'package:mobile_tab_desktop_basic/views/nav_bar/navabar_tablet.dart';
import 'package:mobile_tab_desktop_basic/views/nav_bar/navbar_desktop.dart';
import 'package:mobile_tab_desktop_basic/views/nav_bar/navbar_mobile.dart';

import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: NavbarDesktop(),
      tablet: NavbarTablet(),
      mobile: NavbarMobile(),
    );
  }
}
