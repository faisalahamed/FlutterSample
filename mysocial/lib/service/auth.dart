// import 'package:google_sign_in/google_sign_in.dart';

// class AuthService {
//   final GoogleSignIn googleSignIn = GoogleSignIn();

//   login() {
//     googleSignIn.signIn();
//   }

//   logout() {
//     googleSignIn.signOut();
//   }

//      googleSignIn.onCurrentUserChanged.listen((account) {
//       handleSignIn(account);
//     }, onError: (err) {
//       print('Error signing in: $err');
//     });
//     googleSignIn.signInSilently(suppressErrors: false).then((account) {
//       handleSignIn(account);
//     }).catchError((err) {
//       print('Error signing in: $err');
//     });

//     handleSignIn(GoogleSignInAccount account) {
//     if (account != null) {
//       print('User signed in!: $account');
//       setState(() {
//         isAuth = true;
//       });
//     } else {
//       setState(() {
//         isAuth = false;
//       });
//     }
//   }
// }

// return RaisedButton(
//   child: Text('Logout'),
//   onPressed: logout,
// );
