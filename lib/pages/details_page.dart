import 'package:flutter/material.dart';
import 'package:space_x_app/enum/vehicle_type.dart';
import 'package:space_x_app/model/vehcle.dart';
import 'package:space_x_app/widgets/roadster_details.dart';
import 'package:space_x_app/widgets/rocket_details.dart';
import 'package:space_x_app/widgets/ship_details.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({Key? key, required this.vehicle}) : super(key: key);

  Vehicle vehicle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.share),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.black12,
        ),
        extendBodyBehindAppBar: true,
        body: Column(
          children: [
            if (vehicle.type == VehicleType.roadster) ...[
              RoadsterDetails(
                roadsterData: vehicle.data,
              ),
            ] else if (vehicle.type == VehicleType.rocket) ...[
              RocketDetails(
                rocketData: vehicle.data,
              ),
            ] else ...[
              ShipDetails(
                ship: vehicle.data,
              ),
            ]
          ],
        ));
  }
}
