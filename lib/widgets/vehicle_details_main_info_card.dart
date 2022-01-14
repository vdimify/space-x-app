import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:space_x_app/widgets/card_titile.dart';
import 'package:space_x_app/widgets/row_element.dart';

class VehicleDetailsMainInfoCard extends StatelessWidget {
  VehicleDetailsMainInfoCard(
      {Key? key, required this.id, required this.description, this.firstFlight})
      : super(key: key);

  DateTime? firstFlight;
  final String id;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin: const EdgeInsets.all(10),
      color: Theme.of(context).cardColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            /*const Align(
              alignment: Alignment(0.9, 1.0),
              heightFactor: 0.4,
              child: FloatingActionButton(
                onPressed: null,
                child: Icon(Icons.video_settings_sharp),
              ),
            ),*/
            CardTitle(
              text: 'DESCRIPTION',
            ),
            RowElement(
                name: "Launch Date",
                value: firstFlight == null
                    ? null
                    : DateFormat('yyyy-MM-dd - kk:mm').format(firstFlight!)),
            RowElement(name: "Launch Vehicle", value: id),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                    text: description,
                    style: Theme.of(context).primaryTextTheme.subtitle1),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
