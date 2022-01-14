import 'package:mobx/mobx.dart';

part 'theme_state.g.dart';

class ThemeState extends _ThemeStateBase with _$ThemeState {}

abstract class _ThemeStateBase with Store {
  @observable
  bool isDark = true;

  @action
  void changeCurrentTheme(bool newTheme) {
    isDark = false;
  }
}
