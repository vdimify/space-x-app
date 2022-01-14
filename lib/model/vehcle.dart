import 'package:space_x_app/enum/vehicle_type.dart';
import 'package:space_x_app/model/roadster.dart';
import 'package:space_x_app/model/rocket.dart';
import 'package:space_x_app/model/ship_with_fligh_date.dart';

class Vehicle {
  final String name;
  final VehicleType type;
  final DateTime? firstFlightDate;
  final dynamic data;

  Vehicle(
      {required this.name,
      required this.type,
      this.firstFlightDate,
      required this.data});

  factory Vehicle.fromRocket(Rocket rocket) {
    return Vehicle(
        name: rocket.name,
        type: VehicleType.rocket,
        firstFlightDate: rocket.first_flight,
        data: rocket);
  }

  factory Vehicle.fromRoadster(Roadster roadster) {
    return Vehicle(
        name: roadster.name,
        type: VehicleType.roadster,
        firstFlightDate: roadster.launch_date_utc,
        data: roadster);
  }

  factory Vehicle.fromShip(ShipWithFlightDate ship) {
    return Vehicle(
        name: ship.ship.name,
        type: VehicleType.ship,
        firstFlightDate: ship.firstFlight,
        data: ship.ship);
  }
}
