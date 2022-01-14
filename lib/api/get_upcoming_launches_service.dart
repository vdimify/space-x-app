import 'dart:convert';
import 'package:space_x_app/model/launch.dart';
import 'package:space_x_app/api/base_service.dart';

class GetUpcomingLaunchesService extends BaseService {
  Future<List<Launch>> getUpcomingLaunches() async {
    try {
      String response = await getData("v5/launches/upcoming");
      List<dynamic> json = jsonDecode(response);

      List<Launch> launches = [];
      for (var item in json) {
        launches.add(Launch.fromJson(item as Map<String, dynamic>));
      }

      launches.sort((a, b) {
        if (a.date_utc == null && b.date_utc == null) {
          return 0;
        } else if (a.date_utc == null) {
          return 1;
        } else if (b.date_utc == null) {
          return -1;
        }
        return b.date_utc!.compareTo(a.date_utc!);
      });
      return launches;
    } catch (e) {
      rethrow;
    }
  }
}
