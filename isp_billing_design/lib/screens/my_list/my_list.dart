import 'package:flutter/material.dart';
import 'package:isp_billing_design/screens/my_list/list_desktop.dart';
import 'package:isp_billing_design/screens/my_list/list_mobile.dart';
import 'package:isp_billing_design/screens/my_list/list_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MyList extends StatelessWidget {
  final itemNumber;
  const MyList(this.itemNumber);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: ListDesktop(),
      tablet: ListTablet(),
      mobile: ListMobile(),
    );

    // Scaffold(
    //   body: Column(
    //     children: [
    //       Text('$itemNumber'),
    //       GestureDetector(
    //         onTap: () => Navigator.popUntil(
    //             context, ModalRoute.withName(Navigator.defaultRouteName)),
    //         child: Text(
    //           "Home",
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
