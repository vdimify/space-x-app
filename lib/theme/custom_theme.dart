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
      brightness: Brightness.light,
      primaryColor: const Color(0xfff0f0f5),
      scaffoldBackgroundColor: const Color(0xfff0f0f5),
      fontFamily: 'Montserrat',
      textTheme: ThemeData.light().textTheme.copyWith(
          headline6: const TextStyle(backgroundColor: Colors.white30)),
      canvasColor: const Color(0xff1a1aff),
      appBarTheme: const AppBarTheme(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xff1a1aff),
        backgroundColor: Color(0xffcce4ff),
        unselectedItemColor: Colors.black54,
      ),
      colorScheme:
          ColorScheme.fromSwatch().copyWith(primary: const Color(0xff1a1aff)),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xff1a1aff)),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
        primaryColor: const Color(0xFF333333),
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF333333),
        primaryTextTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 72.0, fontWeight: FontWeight.bold, color: Colors.white),
          headline6: TextStyle(
              fontSize: 36.0,
              fontStyle: FontStyle.italic,
              color: Colors.orange),
          bodyText2: TextStyle(
              fontSize: 14.0, fontFamily: 'Hind', color: Colors.orange),
        ),
        canvasColor: Colors.orange,
        disabledColor: Colors.orange,
        fontFamily: 'Montserrat',
        textTheme: ThemeData.dark().textTheme.copyWith(
            headline6: const TextStyle(backgroundColor: Colors.black26)),
        buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: Colors.green,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.orange,
          backgroundColor: Color(0xFF333333),
          unselectedItemColor: Colors.white,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        cardColor: const Color.fromRGBO(81, 81, 81, 80),
        switchTheme: SwitchThemeData(
          thumbColor:
              MaterialStateProperty.resolveWith((Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return Colors.black;
            }
            if (states.contains(MaterialState.disabled)) {
              return Colors.white;
            }
            return Colors.red;
          }),
          trackColor:
              MaterialStateProperty.resolveWith((Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return Colors.white;
            }
            if (states.contains(MaterialState.disabled)) {
              return Colors.black;
            }
            return Colors.red;
          }),
        ),
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData(backgroundColor: Colors.orange),
        dividerTheme: const DividerThemeData(
            color: Colors.white54, thickness: 1, indent: 10, endIndent: 10)
        //bottomAppBarColor: Colors.grey, colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey).copyWith(secondary: Colors.orange)
        );
  }
}
