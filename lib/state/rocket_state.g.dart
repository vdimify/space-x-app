// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rocket_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RocketState on _RocketStateBase, Store {
  final _$loadingAtom = Atom(name: '_RocketStateBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$loadedAtom = Atom(name: '_RocketStateBase.loaded');

  @override
  bool get loaded {
    _$loadedAtom.reportRead();
    return super.loaded;
  }

  @override
  set loaded(bool value) {
    _$loadedAtom.reportWrite(value, super.loaded, () {
      super.loaded = value;
    });
  }

  final _$errorAtom = Atom(name: '_RocketStateBase.error');

  @override
  String? get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(String? value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  final _$rocketAtom = Atom(name: '_RocketStateBase.rocket');

  @override
  Rocket? get rocket {
    _$rocketAtom.reportRead();
    return super.rocket;
  }

  @override
  set rocket(Rocket? value) {
    _$rocketAtom.reportWrite(value, super.rocket, () {
      super.rocket = value;
    });
  }

  final _$getRocketByIdAsyncAction =
      AsyncAction('_RocketStateBase.getRocketById');

  @override
  Future<void> getRocketById(String id) {
    return _$getRocketByIdAsyncAction.run(() => super.getRocketById(id));
  }

  @override
  String toString() {
    return '''
loading: ${loading},
loaded: ${loaded},
error: ${error},
rocket: ${rocket}
    ''';
  }
}
