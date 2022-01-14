import 'package:mobx/mobx.dart';
import 'package:space_x_app/api/get_past_launches_service.dart';
import 'package:space_x_app/model/launch.dart';

part 'past_launches_state.g.dart';

class PastLaunchesState extends _PastLaunchesStateBase
    with _$PastLaunchesState {
  PastLaunchesState({required GetPastLaunchesService service})
      : super(service: service);
}

abstract class _PastLaunchesStateBase with Store {
  _PastLaunchesStateBase({required this.service});

  final GetPastLaunchesService service;

  @observable
  bool loading = false;

  @observable
  bool loaded = false;

  @observable
  String? error;

  @observable
  ObservableList<Launch> launches = ObservableList<Launch>();

  @computed
  ObservableList<Launch> get sortedLaunches {
    return ObservableList<Launch>.of(launches)
      ..sort((a, b) {
        if (a.static_fire_date_utc == null && b.static_fire_date_utc == null) {
          return 0;
        } else if (a.static_fire_date_utc == null) {
          return 1;
        } else if (b.static_fire_date_utc == null) {
          return -1;
        }
        return b.static_fire_date_utc!.compareTo(a.static_fire_date_utc!);
      });
  }

  @action
  Future<void> getLaunches() async {
    error = null;
    loading = true;
    try {
      List<Launch> list = await service.getPastLaunches();
      launches = ObservableList<Launch>.of(list);
      loading = false;
      loaded = true;
    } catch (e) {
      loading = false;
      error = e.toString();
    }
  }
}
