import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'Quiz/utils/AppTheme.dart';
import 'Quiz/utils/AppConstant.dart';
import 'Quiz/Screens/ProkitScreenListing.dart';
import 'Quiz/Screens/QuizAllList.dart';
import 'Quiz/Screens/QuizCard.dart';
import 'Quiz/Screens/QuizChangePassword.dart';
import 'Quiz/Screens/QuizContactUs.dart';
import 'Quiz/Screens/QuizCreatePassword.dart';
import 'Quiz/Screens/QuizDashboard.dart';
import 'Quiz/Screens/QuizDetails.dart';
import 'Quiz/Screens/QuizEditProfile.dart';
import 'Quiz/Screens/QuizHelpCenter.dart';
import 'Quiz/Screens/QuizHome.dart';
import 'Quiz/Screens/QuizMobileVerify.dart';
import 'Quiz/Screens/QuizNewList.dart';
import 'Quiz/Screens/QuizNotification.dart';
import 'Quiz/Screens/QuizResult.dart';
import 'Quiz/Screens/QuizSearch.dart';
import 'Quiz/Screens/QuizSettings.dart';
import 'Quiz/Screens/QuizSignIn.dart';
import 'Quiz/Screens/QuizSignUp.dart';
import 'Quiz/Screens/QuizUpdateEmail.dart';
import 'Quiz/Screens/QuizVerifcation.dart';
import 'Quiz/Screens/quizEmailRequest.dart';
import 'Quiz/store/AppStore.dart';

import 'Quiz/store/flix_app_localizations.dart';

AppStore appStore = AppStore();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // appStore.setDarkMode(await getBool(isDarkModeOnPref));
  appStore.setDarkMode(false);

  // FlutterError.onError = Crashlytics.instance.recordFlutterError;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          MuviAppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        localeResolutionCallback: (locale, supportedLocales) =>
            Locale(appStore.selectedLanguage),
        locale: Locale(appStore.selectedLanguage),
        supportedLocales: [Locale('en', '')],
        routes: <String, WidgetBuilder>{
          /**launcher screen routes*/
          ProkitScreenListing.tag: (context) => ProkitScreenListing(),

          /**Online Quiz screens routes*/
          QuizSignIn.tag: (BuildContext context) => QuizSignIn(),
          QuizSignUp.tag: (BuildContext context) => QuizSignUp(),
          QuizCreatePassword.tag: (BuildContext context) =>
              QuizCreatePassword(),
          QuizMobileVerify.tag: (BuildContext context) => QuizMobileVerify(),
          QuizVerification.tag: (BuildContext context) => QuizVerification(),
          QuizNotification.tag: (BuildContext context) => QuizNotification(),
          QuizDashboard.tag: (BuildContext context) => QuizDashboard(),
          QuizHome.tag: (BuildContext context) => QuizHome(),
          QuizSearch.tag: (BuildContext context) => QuizSearch(),
          QuizListing.tag: (BuildContext context) => QuizListing(),
          QuizSettings.tag: (BuildContext context) => QuizSettings(),
          QuizEditProfile.tag: (BuildContext context) => QuizEditProfile(),
          QuizUpdateEmail.tag: (BuildContext context) => QuizUpdateEmail(),
          QuizChangePassword.tag: (BuildContext context) =>
              QuizChangePassword(),
          QuizHelpCenter.tag: (BuildContext context) => QuizHelpCenter(),
          QuizContactUs.tag: (BuildContext context) => QuizContactUs(),
          QuizAllList.tag: (BuildContext context) => QuizAllList(),
          QuizDetails.tag: (BuildContext context) => QuizDetails(),
          QuizEmailRequest.tag: (BuildContext context) => QuizEmailRequest(),
          QuizCards.tag: (BuildContext context) => QuizCards(),
          QuizResult.tag: (BuildContext context) => QuizResult(),
        },
        title: mainAppName,
        home: QuizHome(),
        theme: !appStore.isDarkModeOn
            ? AppThemeData.lightTheme
            : AppThemeData.darkTheme,
        builder: (context, child) =>
            ScrollConfiguration(behavior: SBehavior(), child: child),
      ),
    );
  }
}

class SBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
