import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/rendering.dart';
import 'package:islami_app/UI/Chapter%20Details/ChapterDetailsScreen.dart';
import 'package:islami_app/UI/Hadeth%20Detials/HadethDetailsScreen.dart';
import 'package:islami_app/UI/Home/HomeScreen.dart';
import 'package:islami_app/UI/Splash%20Screen/splash_screen.dart';
import 'package:islami_app/UI/myThemeData.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(myApplication());
}

class myApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.DarkTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        ChapterDetailsScreen.routeName: (_) => ChapterDetailsScreen(),
        HadethDetailsScreen.routeName: (_) => HadethDetailsScreen()
      },
      initialRoute: SplashScreen.routeName,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      locale: Locale('ar'),
    );
  }
}
