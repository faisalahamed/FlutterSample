// import 'package:flutter/material.dart';
// import 'package:isp_billing_design/screens/dashboard/dashboard.dart';
// import 'package:responsive_builder/responsive_builder.dart';

// class MainLayout extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ResponsiveBuilder(
//       builder: (context, SizingInformation sizingInformation) => Scaffold(
//         body: Container(
//           // padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
//           color: Colors.blue,
//           alignment: Alignment.topCenter,
//           child: ConstrainedBox(
//             constraints: BoxConstraints(maxWidth: double.infinity),
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: <Widget>[
//                 // NavbarPage(),
//                 Expanded(
//                   child: DashboardPage(),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
