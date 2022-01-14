import 'dart:convert';

import 'package:space_x_app/api/base_service.dart';
import 'package:space_x_app/model/launch.dart';

class GetLaunchByIdService extends BaseService {
  Future<Launch> getLaunch(String id) async {
    try {
      String response = await getData("v5/launches/${id}");
      dynamic json = jsonDecode(response);
      return Launch.fromJson(json as Map<String, dynamic>);
    } catch (e) {
      rethrow;
    }
  }
}
