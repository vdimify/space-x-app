// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ThemeState on _ThemeStateBase, Store {
  final _$themeDataAtom = Atom(name: '_ThemeStateBase.themeData');

  @override
  ThemeData get themeData {
    _$themeDataAtom.reportRead();
    return super.themeData;
  }

  @override
  set themeData(ThemeData value) {
    _$themeDataAtom.reportWrite(value, super.themeData, () {
      super.themeData = value;
    });
  }

  final _$isDarkThemeAtom = Atom(name: '_ThemeStateBase.isDarkTheme');

  @override
  bool get isDarkTheme {
    _$isDarkThemeAtom.reportRead();
    return super.isDarkTheme;
  }

  @override
  set isDarkTheme(bool value) {
    _$isDarkThemeAtom.reportWrite(value, super.isDarkTheme, () {
      super.isDarkTheme = value;
    });
  }

  final _$changeCurrentThemeAsyncAction =
      AsyncAction('_ThemeStateBase.changeCurrentTheme');

  @override
  Future<void> changeCurrentTheme(dynamic isDark) {
    return _$changeCurrentThemeAsyncAction
        .run(() => super.changeCurrentTheme(isDark));
  }

  @override
  String toString() {
    return '''
themeData: ${themeData},
isDarkTheme: ${isDarkTheme}
    ''';
  }
}
