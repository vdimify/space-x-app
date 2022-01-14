import 'dart:convert';

import 'package:space_x_app/api/base_service.dart';
import 'package:space_x_app/model/roadster.dart';

class GetRoadsterService extends BaseService {
  Future<Roadster> getRoadsters() async {
    try {
      String response = await getData("v4/roadster");
      dynamic json = jsonDecode(response);
      return Roadster.fromJson(json as Map<String, dynamic>);
    } catch (e) {
      rethrow;
    }
  }
}
