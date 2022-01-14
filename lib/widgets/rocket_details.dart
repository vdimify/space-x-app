import 'package:flutter/material.dart';
import 'package:space_x_app/model/rocket.dart';
import 'package:space_x_app/widgets/card_titile.dart';
import 'package:space_x_app/widgets/row_element.dart';
import 'package:space_x_app/widgets/vehicle_details_main_info_card.dart';
import 'package:space_x_app/widgets/vehicles_details_header.dart';

class RocketDetails extends StatelessWidget {
  const RocketDetails({
    Key? key,
    required this.rocketData,
  }) : super(key: key);

  //late RocketState _rocketState;
  final Rocket rocketData;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            VehicleDetailsHeader(
              name: rocketData.name,
              imageUrl: rocketData.flickr_images.first,
            ),
            VehicleDetailsMainInfoCard(
              id: rocketData.id,
              description: rocketData.description,
              firstFlight: rocketData.first_flight,
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              margin: const EdgeInsets.all(10),
              color: Theme.of(context).cardColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CardTitle(
                      text: 'VEHICLE',
                    ),
                    RowElement(
                        name: "Mass", value: rocketData.mass.kg.toString()),
                    RowElement(
                        name: "Height",
                        value: rocketData.height.meters.toString()),
                    RowElement(
                        name: "Diameter",
                        value: rocketData.diameter.meters.toString()),
                    const Divider(),
                    RowElement(name: "Type", value: rocketData.type),
                    RowElement(
                        name: "Mars Distance", value: rocketData.engines.type),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
