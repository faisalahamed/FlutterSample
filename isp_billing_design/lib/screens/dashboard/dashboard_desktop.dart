import 'package:flutter/material.dart';
import 'package:isp_billing_design/screens/dashboard/desktop_components/body_content_widget.dart';
import 'package:isp_billing_design/screens/dashboard/desktop_components/right_side_wdiget.dart';
import 'package:isp_billing_design/screens/dashboard/desktop_components/web_vertical_nav_widget.dart';

class DashboardDesktop extends StatelessWidget {
  final sizingInformation;

  const DashboardDesktop(this.sizingInformation);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              WebVerticalNavWidget(),
              BodyContentWidget(
                sizingInformation: sizingInformation,
              ),
            ],
          ),
          Positioned(
            child: RightSideWidget(),
            bottom: 0.0,
            top: 0.0,
            right: 0.0,
          )
        ],
      ),
    );
  }
}
