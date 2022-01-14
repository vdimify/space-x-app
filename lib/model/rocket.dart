import 'package:space_x_app/model/rocket_properties/diameter.dart';
import 'package:space_x_app/model/rocket_properties/engine.dart';
import 'package:space_x_app/model/rocket_properties/first_stage.dart';
import 'package:space_x_app/model/rocket_properties/height.dart';
import 'package:space_x_app/model/rocket_properties/landing_legs.dart';
import 'package:space_x_app/model/rocket_properties/mass.dart';
import 'package:space_x_app/model/rocket_properties/payload_weight.dart';
import 'package:space_x_app/model/rocket_properties/second_stage.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rocket.g.dart';

@JsonSerializable()
class Rocket {
  Height height;
  Diameter diameter;
  Mass mass;
  FirstStage first_stage;
  SecondStage second_stage;
  Engines engines;
  LandingLegs landing_legs;
  List<PayloadWeights> payload_weights;
  List<String> flickr_images;
  String name;
  String type;
  bool active;
  int stages;
  int boosters;
  int cost_per_launch;
  int success_rate_pct;
  DateTime? first_flight;
  String country;
  String company;
  String wikipedia;
  String description;
  String id;

  Rocket(
      {required this.height,
      required this.diameter,
      required this.mass,
      required this.first_stage,
      required this.second_stage,
      required this.engines,
      required this.landing_legs,
      required this.payload_weights,
      required this.flickr_images,
      required this.name,
      required this.type,
      required this.active,
      required this.stages,
      required this.boosters,
      required this.cost_per_launch,
      required this.success_rate_pct,
      required this.first_flight,
      required this.country,
      required this.company,
      required this.wikipedia,
      required this.description,
      required this.id});

  factory Rocket.fromJson(Map<String, dynamic> json) => _$RocketFromJson(json);

  Map<String, dynamic> toJson() => _$RocketToJson(this);

/*  Rocket(
      { required this.flickr_images,
        required this.name,
        required this.type,
        required this.active,
        required this.stages,
        required this.boosters,
        required this.costPerLaunch,
        required this.success_rate_pct,
        required this.first_flight,
        required this.country,
        required this.company,
        required this.wikipedia,
        required this.description,
        required this.id}
        );

  String id;
  List<String?> flickrImages;
  String name;
  String type;
  bool active;
  int stages;
  int boosters;
  int costPerLaunch;
  int successRatePct;
  String firstFlight;
  String country;
  String company;
  String wikipedia;
  String description;


  Rocket.fromJson(Map<String, dynamic> json) {
    flickr_images = json['flickr_images'].cast<String>();
    name = json['name'];
    type = json['type'];
    active = json['active'];
    stages = json['stages'];
    boosters = json['boosters'];
    costPerLaunch = json['cost_per_launch'];
    success_rate_pct = json['success_rate_pct'];
    first_flight = json['first_flight'];
    country = json['country'];
    company = json['company'];
    wikipedia = json['wikipedia'];
    description = json['description'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    return {
    'id' : id,
    'flickr_images' : flickr_images,
    'name' : name,
    'type' : type,
    'active' : active,
    'stages' : stages,
    'boosters' : boosters,
    'cost_per_launch' : costPerLaunch,
    'success_rate_pct' : success_rate_pct,
    'first_flight' : first_flight,
    'country' : country,
    'company' : company,
    'wikipedia' : wikipedia,
    'description' : description
    };
  }*/
}
