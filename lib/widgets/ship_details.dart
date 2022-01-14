import 'package:flutter/material.dart';
import 'package:space_x_app/model/ship.dart';
import 'package:space_x_app/widgets/card_titile.dart';
import 'package:space_x_app/widgets/row_element.dart';
import 'package:space_x_app/widgets/vehicle_details_main_info_card.dart';
import 'package:space_x_app/widgets/vehicles_details_header.dart';

class ShipDetails extends StatelessWidget {
  const ShipDetails({Key? key, required this.ship}) : super(key: key);

  final Ship ship;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            VehicleDetailsHeader(name: ship.name, imageUrl: ship.image),
            VehicleDetailsMainInfoCard(
              id: ship.id,
              description: "",
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
                    RowElement(name: "Type", value: ship.type),
                    RowElement(name: "Model", value: ship.model),
                    RowElement(name: "Home Port", value: ship.home_port),
                    const Divider(),
                    RowElement(name: "Mass", value: ship.mass_kg.toString()),
                    RowElement(name: "Speed", value: ship.speed_kn.toString()),
                    RowElement(
                        name: "Year Build", value: ship.year_built.toString()),
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

/*
import 'package:flutter/material.dart';

class RoadsterWidget extends StatelessWidget {
  const RoadsterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Column(
            children: [
              const Text("DESCRIPTION", textAlign: TextAlign.center,),
              Row(
                  children: const [
                    Text("Launch Date"),
                    Text("15/15/15")
                  ]
              ),
              Row(
                  children: const [
                    Text("Launch Vehicle"),
                    Text("falcon something"),
                  ]
              ),
              SizedBox(
                height: 50,
                child: Text(
                  "This text is very very very very very very very very very very very very very very very very very very very very very very very very very long",
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10,),
        Card(),
      ],
    );
  }
}
*/
