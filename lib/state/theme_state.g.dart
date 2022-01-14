// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ThemeState on _ThemeStateBase, Store {
  final _$isDarkAtom = Atom(name: '_ThemeStateBase.isDark');

  @override
  bool get isDark {
    _$isDarkAtom.reportRead();
    return super.isDark;
  }

  @override
  set isDark(bool value) {
    _$isDarkAtom.reportWrite(value, super.isDark, () {
      super.isDark = value;
    });
  }

  final _$_ThemeStateBaseActionController =
      ActionController(name: '_ThemeStateBase');

  @override
  void changeCurrentTheme(bool newTheme) {
    final _$actionInfo = _$_ThemeStateBaseActionController.startAction(
        name: '_ThemeStateBase.changeCurrentTheme');
    try {
      return super.changeCurrentTheme(newTheme);
    } finally {
      _$_ThemeStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isDark: ${isDark}
    ''';
  }
}
