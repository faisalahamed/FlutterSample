// import 'package:dashboard_card_button/dashboard_card_button.dart';
import 'package:flutter/material.dart';
import 'package:isp_billing_design/routes.dart';
import 'package:isp_billing_design/screens/dashboard/dashboard.dart';
import 'package:isp_billing_design/screens/login/login.dart';
import 'package:isp_billing_design/screens/my_list/my_list.dart';
import 'package:isp_billing_design/widgets/main_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      initialRoute: Routes.home,
      onGenerateRoute: (RouteSettings settings) {
        var itemNumber = settings.arguments;
        return Routes.fadeThrough(settings, (context) {
          switch (settings.name) {
            case Routes.home:
              return MainLayout();
            case Routes.list:
              return MyList(itemNumber);
            default:
              return SizedBox.shrink();
          }
        });
      },
    );
  }
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Column(
//           children: [
//             MyRaisedGradientButton(
//               onPressed: () => print('clicked'),
//               height: 100,
//               cardCounter: '10',
//               cardTitle: 'Total User',
//               gradient: LinearGradient(
//                 colors: <Color>[
//                   Color.fromRGBO(117, 117, 237, 1),
//                   // Color.fromRGBO(185, 111, 255, 1),
//                   // Color.fromRGBO(180, 107, 255, 1),
//                   Color.fromRGBO(206, 39, 249, 1),
//                 ],
//               ),
//             ),
//             MyRaisedGradientButton(
//               onPressed: () => print('clicked'),
//               height: 100,
//               cardCounter: '10',
//               cardTitle: 'Total User',
//               gradient: LinearGradient(
//                 colors: <Color>[
//                   Color.fromRGBO(254, 126, 150, 1),
//                   Color.fromRGBO(254, 126, 150, 1)
//                 ],
//               ),
//             ),
//             MyRaisedGradientButton(
//               onPressed: () => print('clicked'),
//               height: 100,
//               cardCounter: '10',
//               cardTitle: 'Total User',
//               gradient: LinearGradient(
//                 colors: <Color>[
//                   Color.fromRGBO(154, 226, 219, 1),
//                   Color.fromRGBO(32, 208, 182, 1)
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
