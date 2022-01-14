import 'package:space_x_app/model/rocket_properties/payload.dart';
import 'package:space_x_app/model/rocket_properties/thrust_sea_level.dart';
import 'package:json_annotation/json_annotation.dart';

part 'second_stage.g.dart';

@JsonSerializable()
class SecondStage {
  ThrustSeaLevel? thrust;
  Payloads? payloads;
  bool? reusable;
  int? engines;
  double? fuel_amount_tons;
  int? burn_time_sec;

  SecondStage(
      {this.thrust,
        this.payloads,
        this.reusable,
        this.engines,
        this.fuel_amount_tons,
        this.burn_time_sec});

  factory SecondStage.fromJson(Map<String, dynamic> json) =>_$SecondStageFromJson(json);

  Map<String, dynamic> toJson() => _$SecondStageToJson(this);

 /* SecondStage.fromJson(Map<String, dynamic> json) {
    thrust = json['thrust'] != null
        ? ThrustSeaLevel.fromJson(json['thrust'])
        : null;
    payloads = json['payloads'] != null
        ? Payloads.fromJson(json['payloads'])
        : null;
    reusable = json['reusable'];
    engines = json['engines'];
    fuel_amount_tons = json['fuel_amount_tons'];
    burn_time_sec = json['burn_time_sec'];
  }*/

 /* Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (thrust != null) {
      data['thrust'] = thrust.toJson();
    }
    if (payloads != null) {
      data['payloads'] = payloads.toJson();
    }
    data['reusable'] = reusable;
    data['engines'] = engines;
    data['fuel_amount_tons'] = fuel_amount_tons;
    data['burn_time_sec'] = burn_time_sec;
    return data;
  }*/
}