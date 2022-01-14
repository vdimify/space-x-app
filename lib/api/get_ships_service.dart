import 'dart:convert';

import 'package:space_x_app/api/base_service.dart';
import 'package:space_x_app/model/ship.dart';

class GetShipsService extends BaseService {
  Future<List<Ship>> getShips() async {
    try {
      String response = await getData("v4/ships");
      List<dynamic> json = jsonDecode(response);

      List<Ship> ships = [];
      for (var item in json) {
        ships.add(Ship.fromJson(item as Map<String, dynamic>));
      }
      return ships;
    } catch (e) {
      rethrow;
    }
  }
}
