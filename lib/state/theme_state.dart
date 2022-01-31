import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:space_x_app/theme/custom_theme.dart';

part 'theme_state.g.dart';

class ThemeState extends _ThemeStateBase with _$ThemeState {}

abstract class _ThemeStateBase with Store {

  @observable
  ThemeData themeData = CustomTheme.darkTheme;

  @observable
  bool isDarkTheme = true;

  @computed
  Future<ThemeData> get currentThemeData async {
    themeData = CustomTheme.lightTheme;
    SharedPreferences preferencfes = await SharedPreferences.getInstance();
    bool? isDarkTheme = preferencfes.getBool("isDarkTheme");
    if(isDarkTheme == null || isDarkTheme) {
      themeData = CustomTheme.darkTheme;
    }
    return themeData;
  }

  @action
  Future<void> changeCurrentTheme(isDark) async {
    SharedPreferences preferencfes = await SharedPreferences.getInstance();
    if(isDark) {
      themeData = CustomTheme.darkTheme;
      isDarkTheme = true;
    } else {
      themeData = CustomTheme.lightTheme;
      isDarkTheme = false;
    }
    preferencfes.setBool("isDarkTheme", isDarkTheme);
  }
}
