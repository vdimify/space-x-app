import 'package:space_x_app/model/ship.dart';

class ShipWithFlightDate {
  Ship ship;
  DateTime? firstFlight;

  ShipWithFlightDate({required this.ship, required this.firstFlight});
}
