// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicles_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$VehiclesState on _VehiclesStateBase, Store {
  Computed<ObservableList<Vehicle>>? _$sortedListComputed;

  @override
  ObservableList<Vehicle> get sortedList => (_$sortedListComputed ??=
          Computed<ObservableList<Vehicle>>(() => super.sortedList,
              name: '_VehiclesStateBase.sortedList'))
      .value;

  final _$loadingAtom = Atom(name: '_VehiclesStateBase.loading');

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

  final _$loadedAtom = Atom(name: '_VehiclesStateBase.loaded');

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

  final _$errorAtom = Atom(name: '_VehiclesStateBase.error');

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

  final _$vehiclesAtom = Atom(name: '_VehiclesStateBase.vehicles');

  @override
  ObservableList<Vehicle> get vehicles {
    _$vehiclesAtom.reportRead();
    return super.vehicles;
  }

  @override
  set vehicles(ObservableList<Vehicle> value) {
    _$vehiclesAtom.reportWrite(value, super.vehicles, () {
      super.vehicles = value;
    });
  }

  final _$getVehiclesAsyncAction =
      AsyncAction('_VehiclesStateBase.getVehicles');

  @override
  Future<void> getVehicles() {
    return _$getVehiclesAsyncAction.run(() => super.getVehicles());
  }

  @override
  String toString() {
    return '''
loading: ${loading},
loaded: ${loaded},
error: ${error},
vehicles: ${vehicles},
sortedList: ${sortedList}
    ''';
  }
}
