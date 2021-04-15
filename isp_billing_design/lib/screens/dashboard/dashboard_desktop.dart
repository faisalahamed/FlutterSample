import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'desktop_components/body_content_widget.dart';
import 'desktop_components/web_vertical_nav_widget.dart';

class DashboardDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              WebVerticalNavWidget(),
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
