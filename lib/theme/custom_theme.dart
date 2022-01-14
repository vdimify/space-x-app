import 'package:flutter/material.dart';

class CustomTheme with ChangeNotifier {
  static bool _isDarkTheme = true;

  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  static ThemeData get lightTheme {
    //TODO
    return ThemeData(
      primaryColor: Colors.purple,
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Montserrat',
      buttonTheme: ButtonThemeData(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        buttonColor: Colors.orange,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
        primaryColor: const Color.fromRGBO(51, 51, 51, 50),
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color.fromRGBO(51, 51, 51, 50),
        primaryTextTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 72.0, fontWeight: FontWeight.bold, color: Colors.white),
          headline6: TextStyle(
              fontSize: 36.0, fontStyle: FontStyle.italic, color: Colors.grey),
          bodyText2: TextStyle(
              fontSize: 14.0, fontFamily: 'Hind', color: Colors.orange),
        ),
        canvasColor: Colors.orange,
        disabledColor: Colors.orange,
        fontFamily: 'Montserrat',
        textTheme: ThemeData.dark().textTheme,
        buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: Colors.green,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.orange,
          backgroundColor: Color.fromRGBO(51, 51, 51, 50),
          unselectedItemColor: Colors.white,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        cardColor: const Color.fromRGBO(81, 81, 81, 80),
        dividerTheme: const DividerThemeData(
            color: Colors.white54, thickness: 1, indent: 10, endIndent: 10)
        //bottomAppBarColor: Colors.grey, colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey).copyWith(secondary: Colors.orange)
        );
  }
}
