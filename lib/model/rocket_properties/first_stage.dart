import 'package:space_x_app/model/rocket_properties/thrust_sea_level.dart';
import 'package:json_annotation/json_annotation.dart';

part 'first_stage.g.dart';

@JsonSerializable()
class FirstStage {
  ThrustSeaLevel? thrust_sea_level;
  ThrustSeaLevel? thrust_vacuum;
  bool? reusable;
  int? engines;
  double? fuel_amount_tons;
  int? burn_time_sec;

  FirstStage(
      { this.thrust_sea_level,
        this.thrust_vacuum,
        this.reusable,
        this.engines,
        this.fuel_amount_tons,
        this.burn_time_sec});


  factory FirstStage.fromJson(Map<String, dynamic> json) =>_$FirstStageFromJson(json);

  Map<String, dynamic> toJson() => _$FirstStageToJson(this);
  /*FirstStage.fromJson(Map<String, dynamic> json) {
    thrust_sea_level = json['thrust_sea_level'] != null
        ? ThrustSeaLevel.fromJson(json['thrust_sea_level'])
        : null;
    thrust_vacuum = json['thrust_vacuum'] != null
        ? ThrustSeaLevel.fromJson(json['thrust_vacuum'])
        : null;
    reusable = json['reusable'];
    engines = json['engines'];
    fuel_amount_tons = json['fuel_amount_tons'];
    burn_time_sec = json['burn_time_sec'];
  }*/

  /*Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (thrust_sea_level != null) {
      data['thrust_sea_level'] = thrust_sea_level.toJson();
    }
    if (thrust_vacuum != null) {
      data['thrust_vacuum'] = thrust_vacuum.toJson();
    }
    data['reusable'] = this.reusable;
    data['engines'] = this.engines;
    data['fuel_amount_tons'] = this.fuel_amount_tons;
    data['burn_time_sec'] = this.burn_time_sec;
    return data;
  }*/
}
