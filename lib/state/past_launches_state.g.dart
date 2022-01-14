// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'past_launches_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PastLaunchesState on _PastLaunchesStateBase, Store {
  Computed<ObservableList<Launch>>? _$sortedLaunchesComputed;

  @override
  ObservableList<Launch> get sortedLaunches => (_$sortedLaunchesComputed ??=
          Computed<ObservableList<Launch>>(() => super.sortedLaunches,
              name: '_PastLaunchesStateBase.sortedLaunches'))
      .value;

  final _$loadingAtom = Atom(name: '_PastLaunchesStateBase.loading');

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

  final _$loadedAtom = Atom(name: '_PastLaunchesStateBase.loaded');

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

  final _$errorAtom = Atom(name: '_PastLaunchesStateBase.error');

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

  final _$launchesAtom = Atom(name: '_PastLaunchesStateBase.launches');

  @override
  ObservableList<Launch> get launches {
    _$launchesAtom.reportRead();
    return super.launches;
  }

  @override
  set launches(ObservableList<Launch> value) {
    _$launchesAtom.reportWrite(value, super.launches, () {
      super.launches = value;
    });
  }

  final _$getLaunchesAsyncAction =
      AsyncAction('_PastLaunchesStateBase.getLaunches');

  @override
  Future<void> getLaunches() {
    return _$getLaunchesAsyncAction.run(() => super.getLaunches());
  }

  @override
  String toString() {
    return '''
loading: ${loading},
loaded: ${loaded},
error: ${error},
launches: ${launches},
sortedLaunches: ${sortedLaunches}
    ''';
  }
}
