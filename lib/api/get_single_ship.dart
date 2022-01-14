import 'dart:convert';

import 'package:space_x_app/api/base_service.dart';
import 'package:space_x_app/model/ship.dart';

class GetSingleShipById extends BaseService {
  Future<Ship> getShip(String id) async {
    try {
      String response = await getData("v4/ships/${id}");
      dynamic json = jsonDecode(response);
      return Ship.fromJson(json as Map<String, dynamic>);
    } catch (e) {
      rethrow;
    }
  }
}
