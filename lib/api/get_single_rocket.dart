import 'dart:convert';

import 'package:space_x_app/api/base_service.dart';
import 'package:space_x_app/model/launch.dart';
import 'package:space_x_app/model/rocket.dart';

class GetSingleRocketById extends BaseService {
  Future<Rocket> getRocket(String id) async {
    try {
      String response = await getData("v4/rockets/${id}");
      dynamic json = jsonDecode(response);
      return Rocket.fromJson(json as Map<String, dynamic>);
    } catch (e) {
      rethrow;
    }
  }
}
