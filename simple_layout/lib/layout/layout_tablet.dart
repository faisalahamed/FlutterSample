import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simple_layout/layout/components/tab_vertical_nav_widget.dart';

class LayoutTablet extends StatelessWidget {
  final Widget child;

  LayoutTablet(this.child);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              TabVerticalNavWidget(),
              ResponsiveBuilder(builder: (context, sizingInformation) {
                return Container(
                  width: sizingInformation.screenSize.width / 1.4,
                  height: sizingInformation.screenSize.height,
                  color: Colors.amberAccent,
                  child: child,
                );
              }),
            ],
          ),
        ],
      ),
    );
  }
}
