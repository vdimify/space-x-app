import 'package:space_x_app/api/get_launch_by_id_service.dart';
import 'package:space_x_app/api/get_roadster_service.dart';
import 'package:space_x_app/api/get_rockets_service.dart';
import 'package:space_x_app/api/get_ships_service.dart';
import 'package:space_x_app/model/launch.dart';
import 'package:space_x_app/model/roadster.dart';
import 'package:space_x_app/model/rocket.dart';
import 'package:space_x_app/model/ship.dart';
import 'package:space_x_app/model/ship_with_fligh_date.dart';
import 'package:space_x_app/model/vehcle.dart';

class GetVehiclesService {
  final GetRoadsterService roadsterService;
  final GetShipsService shipService;
  final GetRocketsService rocketService;
  final GetLaunchByIdService findLaunchByIdService;

  GetVehiclesService(
      {required this.roadsterService,
      required this.shipService,
      required this.rocketService,
      required this.findLaunchByIdService});

  Future<List<Vehicle>> getVehicles() async {
    List<Vehicle> v = [];

    Roadster roadster = await roadsterService
        .getRoadsters(); //.then((List<Roadster> roadsters) {roadsters.forEach(v.add(Vehicle.fromRoadster(it))});
    List<Ship> ships = await shipService.getShips();
    List<Rocket> rockets = await rocketService.getRockets();

    List<ShipWithFlightDate> shipsWithDate = [];
    for (var element in ships) {
      Launch launch =
          await findLaunchByIdService.getLaunch(element.launches.first);
      shipsWithDate.add(ShipWithFlightDate(
          ship: element, firstFlight: launch.static_fire_date_utc));
    }

    v.add(Vehicle.fromRoadster(roadster));
    for (var ship in shipsWithDate) {
      v.add(Vehicle.fromShip(ship));
    }
    for (var rocket in rockets) {
      v.add(Vehicle.fromRocket(rocket));
    }

    return v;
  }
}
