import 'package:flutter/material.dart';
import 'package:isp_billing_design/screens/dashboard/desktop_components/tab_vertical_nav_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'desktop_components/body_content_widget.dart';

class DashboardTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              TabVerticalNavWidget(),
              ResponsiveBuilder(
                builder: (context, sizingInformation) => BodyContentWidget(
                  sizingInformation: sizingInformation,
                ),
              ),
              Expanded(
                  child: Container(
                color: Colors.amberAccent,
              ))
            ],
          ),
          // Positioned(
          //   child: RightSideWidget(),
          //   bottom: 0.0,
          //   top: 0.0,
          //   right: 0.0,
          // )
        ],
      ),
    );
  }
}
