import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simple_layout/layout/components/web_vertical_nav_widget.dart';

class LayoutDesktop extends StatelessWidget {
  final Widget child;
  const LayoutDesktop(this.child);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WebVerticalNavWidget(),
              ResponsiveBuilder(builder: (context, sizingInformation) {
                print(sizingInformation.screenSize.width);
                return Container(
                  width: sizingInformation.screenSize.width / 1.4,
                  height: sizingInformation.screenSize.height,
                  color: Colors.amberAccent,
                  child: child,
                );
              }),
              ResponsiveBuilder(builder: (context, sizingInformation) {
                return Container(
                  height: sizingInformation.screenSize.height,
                  width: sizingInformation.screenSize.width -
                      sizingInformation.screenSize.width / 1.2,
                  color: Colors.red,
                  child: Text('data'),
                );
              }),
            ],
          ),
        ],
      ),
    );
  }
}
