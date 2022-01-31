import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:maps_launcher/maps_launcher.dart';

class LaunchItem extends StatelessWidget {
  LaunchItem({Key? key, required this.name, this.date}) : super(key: key);

  final String name;
  DateTime? date;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTile(
        leading: const Icon(Icons.airplanemode_active),
        title: Text(name),
        subtitle: Text(date == null
            ? "Unknown"
            : DateFormat('yyyy-MM-dd - kk:mm').format(date!)),
        trailing: const Icon(Icons.navigate_next),
        onTap: () {
          //TODO get launchpad coordinates
          MapsLauncher.launchCoordinates(33.9208, -118.3280);
        },
      ),
      const Divider(),
    ]);
  }
}
