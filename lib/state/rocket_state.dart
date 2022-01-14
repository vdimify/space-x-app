import 'package:mobx/mobx.dart';
import 'package:space_x_app/api/get_single_rocket.dart';
import 'package:space_x_app/model/rocket.dart';

part 'rocket_state.g.dart';

class RocketState extends _RocketStateBase with _$RocketState {
  RocketState({required GetSingleRocketById service}) : super(service: service);
}

abstract class _RocketStateBase with Store {
  _RocketStateBase({required this.service});

  final GetSingleRocketById service;

  @observable
  bool loading = false;

  @observable
  bool loaded = false;

  @observable
  String? error;

  @observable
  Rocket? rocket;

  @action
  Future<void> getRocketById(String id) async {
    error = null;
    loading = true;
    try {
      rocket = await service.getRocket(id);
      loading = false;
      loaded = true;
    } catch (e) {
      loading = false;
      error = e.toString();
    }
  }
}
