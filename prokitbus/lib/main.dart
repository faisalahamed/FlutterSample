
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nb_utils/nb_utils.dart';

import 'package:prokitbus/qibus/others/AppConstant.dart';
import 'package:prokitbus/qibus/others/ProkitScreenListing.dart';
import 'package:prokitbus/qibus/others/flix_app_localizations.dart';
import 'package:prokitbus/qibus/others/AppTheme.dart';
import 'package:prokitbus/store/AppStore.dart';

import 'qibus/screen/QIBusAddCard.dart';
import 'qibus/screen/QIBusAddPassenger.dart';
import 'qibus/screen/QIBusCards.dart';
import 'qibus/screen/QIBusDashboard.dart';
import 'qibus/screen/QIBusEditProfile.dart';
import 'qibus/screen/QIBusHelp.dart';
import 'qibus/screen/QIBusNotification.dart';
import 'qibus/screen/QIBusPayment.dart';
import 'qibus/screen/QIBusPickDrop.dart';
import 'qibus/screen/QIBusReferEarn.dart';
import 'qibus/screen/QIBusSearhList.dart';
import 'qibus/screen/QIBusSelectSeat.dart';
import 'qibus/screen/QIBusSetting.dart';
import 'qibus/screen/QIBusSignIn.dart';
import 'qibus/screen/QIBusSplash.dart';
import 'qibus/screen/QIBusVerification.dart';
import 'qibus/screen/QIBusViewOffer.dart';
import 'qibus/screen/QIBusViewPackage.dart';
import 'qibus/screen/QIBusWallet.dart';


AppStore appStore = AppStore();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  appStore.setDarkMode(await getBool(isDarkModeOnPref));

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
        localizationsDelegates: [MuviAppLocalizations.delegate, GlobalMaterialLocalizations.delegate, GlobalWidgetsLocalizations.delegate],
        localeResolutionCallback: (locale, supportedLocales) => Locale(appStore.selectedLanguage),
        locale: Locale(appStore.selectedLanguage),
        supportedLocales: [Locale('en', '')],
        routes: <String, WidgetBuilder>{
          ProkitScreenListing.tag: (context) => ProkitScreenListing(),

          /**QIBus screens routes*/
          QIBusCards.tag: (BuildContext context) => QIBusCards(),
          QIBusDashboard.tag: (BuildContext context) => QIBusDashboard(),
          QIBusEditProfile.tag: (BuildContext context) => QIBusEditProfile(),
          QIBusHelp.tag: (BuildContext context) => QIBusHelp(),
          QIBusNotification.tag: (BuildContext context) => QIBusNotification(),
          QIBusReferEarn.tag: (BuildContext context) => QIBusReferEarn(),
          QIBusSearchList.tag: (BuildContext context) => QIBusSearchList(),
          QIBusSetting.tag: (BuildContext context) => QIBusSetting(),
          QIBusSignIn.tag: (BuildContext context) => QIBusSignIn(),
          QIBusVerification.tag: (BuildContext context) => QIBusVerification(),
          QIBusViewOffer.tag: (BuildContext context) => QIBusViewOffer(),
          QIBusViewPackage.tag: (BuildContext context) => QIBusViewPackage(),
          QIBusWallet.tag: (BuildContext context) => QIBusWallet(),
          QIBusSplash.tag: (BuildContext context) => QIBusSplash(),
          QIBusSelectSeat.tag: (BuildContext context) => QIBusSelectSeat(),
          QIBusPickDrop.tag: (BuildContext context) => QIBusPickDrop(),
          QIBusAddPassenger.tag: (BuildContext context) => QIBusAddPassenger(),
          QIBusPayment.tag: (BuildContext context) => QIBusPayment(),
          QIBusAddCard.tag: (BuildContext context) => QIBusAddCard(),

  
          
         
        },
        title: mainAppName,
        // home: AppSplashScreen(),
        home: QIBusDashboard(),
        theme: !appStore.isDarkModeOn ? AppThemeData.lightTheme : AppThemeData.darkTheme,
        builder: (context, child) => ScrollConfiguration(behavior: SBehavior(), child: child),
      ),
    );
  }
}

class SBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
