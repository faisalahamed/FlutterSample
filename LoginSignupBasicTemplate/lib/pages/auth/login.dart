// import 'package:flutter/material.dart';

// class LoginPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topRight,
//             end: Alignment.bottomLeft,
//             colors: [
//               Theme.of(context).accentColor,
//               Theme.of(context).primaryColor,
//             ],
//           ),
//         ),
//         alignment: Alignment.center,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'My Social',
//               style: TextStyle(
//                 fontFamily: "Signatra",
//                 fontSize: 90.0,
//                 color: Colors.white,
//               ),
//             ),
//             loginWidget(),
//             GestureDetector(
//               // onTap: login,
//               child: Container(
//                 width: 260.0,
//                 height: 60.0,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage(
//                       'assets/images/google_signin_button.png',
//                     ),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// Widget loginWidget() {
//   return Container(
//     padding: EdgeInsets.all(20.0),
//     child: Column(
//       children: [
//         TextFormField(
//           style: TextStyle(color: Colors.white),
//           decoration: InputDecoration(
//             labelStyle: TextStyle(color: Colors.white),
//             labelText: 'Email',
//             hintText: "example@example.com",
//           ),
//         ),
//         TextFormField(
//           obscureText: true,
//           style: TextStyle(color: Colors.white),
//           decoration: InputDecoration(
//             labelStyle: TextStyle(color: Colors.white),
//             labelText: 'Password',
//           ),
//         ),
//         RaisedButton(
//           onPressed: null,
//           child: Text('Login'),
//         ),
//       ],
//     ),
//   );
// }
