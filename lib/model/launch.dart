import 'package:json_annotation/json_annotation.dart';

part 'launch.g.dart';

@JsonSerializable()
class Launch {
  //List<> fairings;
  //Links links;
  DateTime? static_fire_date_utc;
  int? static_fire_date_unix;
  bool tdb;
  bool net;
  int window;
  String rocket;
  bool success;

  //List<> failures;
  String details;

  //List<> crew;
  //List<> ships;
  List<String> capsules;
  List<String> payloads;
  String launchpad;
  bool auto_update;
  int flight_number;
  String name;
  DateTime? date_utc;
  int date_unix;
  DateTime? date_local;
  String date_precision;
  bool upcoming;

  //List<> cores;
  String id;

  Launch(
      { //required this.fairings,
      //required this.links,
      required this.static_fire_date_utc,
      required this.static_fire_date_unix,
      required this.tdb,
      required this.net,
      required this.window,
      required this.rocket,
      required this.success,
      //required this.failures,
      required this.details,
      //required this.crew,
      //required this.ships,
      required this.capsules,
      required this.payloads,
      required this.launchpad,
      required this.auto_update,
      required this.flight_number,
      required this.name,
      required this.date_utc,
      required this.date_unix,
      required this.date_local,
      required this.date_precision,
      required this.upcoming,
      //required this.cores,
      required this.id});

  factory Launch.fromJson(Map<String, dynamic> json) => _$LaunchFromJson(json);

  Map<String, dynamic> toJson() => _$LaunchToJson(this);
}
