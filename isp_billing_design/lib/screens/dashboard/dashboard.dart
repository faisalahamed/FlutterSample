import 'package:flutter/material.dart';
import 'package:isp_billing_design/screens/dashboard/dashboard_desktop.dart';
import 'package:isp_billing_design/screens/dashboard/dashboard_mobile.dart';
import 'package:isp_billing_design/screens/dashboard/dashboard_tab.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DashboardPage extends StatelessWidget {
  final sizingInformation;
  DashboardPage(this.sizingInformation);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: DashboardDesktop(sizingInformation),
      tablet: DashboardTablet(),
      mobile: DashboardMobile(),
    );
  }
}
