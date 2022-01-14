import 'package:flutter/material.dart';
import 'package:space_x_app/model/roadster.dart';
import 'package:space_x_app/widgets/row_element.dart';
import 'package:space_x_app/widgets/vehicle_details_main_info_card.dart';
import 'package:space_x_app/widgets/vehicles_details_header.dart';

import 'card_titile.dart';

class RoadsterDetails extends StatelessWidget {
  const RoadsterDetails({
    Key? key,
    required this.roadsterData,
  }) : super(key: key);

  final Roadster roadsterData;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            VehicleDetailsHeader(
              name: roadsterData.name,
              imageUrl: roadsterData.flickrImages?.first,
              videoUrl: roadsterData.video,
            ),
            VehicleDetailsMainInfoCard(
              id: roadsterData.id,
              description: roadsterData.details,
              firstFlight: roadsterData.launch_date_utc,
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
                        name: "Speed",
                        value: roadsterData.speed_kph.toString()),
                    const Divider(),
                    RowElement(
                        name: "Earth Distance",
                        value: roadsterData.earth_distance_km.toString()),
                    RowElement(
                        name: "Mars Distance",
                        value: roadsterData.mars_distance_km.toString()),
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
