import 'dart:convert';

import 'package:space_x_app/model/rocket.dart';
import 'package:space_x_app/api/base_service.dart';

class GetRocketsService extends BaseService {
  Future<List<Rocket>> getRockets() async {
    try {
      String response = await getData("v4/rockets");
      List<dynamic> json = jsonDecode(response);

      List<Rocket> rockets = [];
      for (var item in json) {
        rockets.add(Rocket.fromJson(item as Map<String, dynamic>));
      }
      return rockets;
    } catch (e) {
      rethrow;
    }
  }
}
