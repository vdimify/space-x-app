import 'dart:convert';
import 'package:space_x_app/model/launch.dart';
import 'package:space_x_app/api/base_service.dart';

class GetPastLaunchesService extends BaseService {
  Future<List<Launch>> getPastLaunches() async {
    try {
      String response = await getData("v5/launches/past");
      List<dynamic> json = jsonDecode(response);

      List<Launch> launches = [];
      for (var item in json) {
        launches.add(Launch.fromJson(item as Map<String, dynamic>));
      }

      launches.removeWhere((element) => element.success == false);
      /*launches.sort((a, b)
      {
          if(a.static_fire_date_utc == null && b.static_fire_date_utc == null) {
            return 0;
          } else if (a.static_fire_date_utc == null) {
            return 1;
          } else if (b.static_fire_date_utc == null) {
            return -1;
          }
          return b.static_fire_date_utc!.compareTo(a.static_fire_date_utc!);
       }
    );*/
      return launches;
    } catch (e) {
      rethrow;
    }
  }
}
