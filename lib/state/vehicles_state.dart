import 'package:mobx/mobx.dart';
import 'package:space_x_app/api/get_vehicle_service.dart';
import 'package:space_x_app/model/vehcle.dart';

part 'vehicles_state.g.dart';

class VehiclesState extends _VehiclesStateBase with _$VehiclesState {
  VehiclesState({required GetVehiclesService service})
      : super(service: service);
}

abstract class _VehiclesStateBase with Store {
  _VehiclesStateBase({required this.service});

  final GetVehiclesService service;

  @observable
  bool loading = false;

  @observable
  bool loaded = false;

  @observable
  String? error;

  @observable
  ObservableList<Vehicle> vehicles = ObservableList<Vehicle>();

  @computed
  ObservableList<Vehicle> get sortedList {
    return ObservableList<Vehicle>.of(vehicles)
      ..sort((a, b) {
        if (a.firstFlightDate == null) {
          return 1;
        } else if (b.firstFlightDate == null) {
          return -1;
        }
        return b.firstFlightDate!.compareTo(a.firstFlightDate!);
      });
  }

  @action
  Future<void> getVehicles() async {
    error = null;
    loading = true;
    try {
      List<Vehicle> list = await service.getVehicles();
      vehicles = ObservableList<Vehicle>.of(list);
      loading = false;
      loaded = true;
    } catch (e) {
      loading = false;
      error = e.toString();
    }
  }
}
