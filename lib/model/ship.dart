import 'package:json_annotation/json_annotation.dart';

part 'ship.g.dart';

@JsonSerializable()
class Ship {
  String id;
  String name;
  bool active;
  List<String> launches;
  String? legacy_id;
  String? model;
  String? type;
  List<String> roles;
  int? imo;
  int? mmsi;
  int? abs;
  int? shipClass;
  int? mass_kg;
  int? mass_lbs;
  int? year_built;
  String? home_port;
  String? status;
  double? speed_kn;
  double? course_deg;
  double? latitude;
  double? longitude;
  String? last_ais_update;
  String? link;
  String? image;

  Ship({
    required this.id,
    required this.name,
    required this.active,
    required this.launches,
    this.legacy_id,
    this.model,
    this.type,
    required this.roles,
    this.imo,
    this.mmsi,
    this.abs,
    this.shipClass,
    this.mass_kg,
    this.mass_lbs,
    this.year_built,
    this.home_port,
    this.status,
    this.speed_kn,
    this.course_deg,
    this.latitude,
    this.longitude,
    this.last_ais_update,
    this.link,
    this.image,
  });

  factory Ship.fromJson(Map<String, dynamic> json) => _$ShipFromJson(json);

  Map<String, dynamic> toJson() => _$ShipToJson(this);
}
