import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/UI/Chapter%20Details/ChapterDetailsScreen.dart';
import 'package:islami_app/UI/Hadeth%20Detials/HadethDetailsScreen.dart';
import 'package:islami_app/UI/Home/HomeScreen.dart';
import 'package:islami_app/UI/Splash%20Screen/splash_screen.dart';

void main() {
  runApp(myApplication());
}

class myApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        cardColor: Colors.white,
        cardTheme: CardTheme(
          color: Colors.white,
          surfaceTintColor: Colors.white,
          elevation: 18,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        ),
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            titleTextStyle: TextStyle(color: Colors.black, fontSize: 28),
            centerTitle: true),
        scaffoldBackgroundColor: Colors.transparent,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            selectedIconTheme: IconThemeData(size: 24)),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFFB7935F),
          primary: Color(0xFFB7935F),
          secondary: Color(0x87B7935F),
          onPrimary: Colors.white,
          onSecondary: Colors.black,
        ),
        useMaterial3: true,
      ),
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
