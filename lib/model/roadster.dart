import 'package:json_annotation/json_annotation.dart';

part 'roadster.g.dart';

@JsonSerializable()
class Roadster {
  String id;
  String name;
  DateTime launch_date_utc;
  int launch_date_unix;
  int launch_mass_kg;
  int launch_mass_lbs;
  int norad_id;
  double epoch_jd;
  String orbit_type;
  double apoapsis_au;
  double periapsis_au;
  double semi_major_axis_au;
  double eccentricity;
  double inclination;
  double longitude;
  double periapsis_arg;
  double period_days;
  double speed_kph;
  double speed_mph;
  double earth_distance_km;
  double earth_distance_mi;
  double mars_distance_km;
  String wikipedia;
  String video;
  String details;
  List<String>? flickrImages;

  Roadster(
      {required this.id,
      required this.name,
      required this.launch_date_utc,
      required this.launch_date_unix,
      required this.launch_mass_kg,
      required this.launch_mass_lbs,
      required this.norad_id,
      required this.epoch_jd,
      required this.orbit_type,
      required this.apoapsis_au,
      required this.periapsis_au,
      required this.semi_major_axis_au,
      required this.eccentricity,
      required this.inclination,
      required this.longitude,
      required this.periapsis_arg,
      required this.period_days,
      required this.speed_kph,
      required this.speed_mph,
      required this.earth_distance_km,
      required this.earth_distance_mi,
      required this.mars_distance_km,
      required this.wikipedia,
      required this.video,
      required this.details,
      this.flickrImages});

  factory Roadster.fromJson(Map<String, dynamic> json) =>
      _$RoadsterFromJson(json);

  Map<String, dynamic> toJson() => _$RoadsterToJson(this);
}
