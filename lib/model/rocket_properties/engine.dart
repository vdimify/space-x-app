import 'package:space_x_app/model/rocket_properties/isp.dart';
import 'package:space_x_app/model/rocket_properties/thrust_sea_level.dart';
import 'package:json_annotation/json_annotation.dart';

part 'engine.g.dart';

@JsonSerializable()
class Engines {
  Isp? isp;
  ThrustSeaLevel? thrust_sea_level;
  ThrustSeaLevel? thrust_vacuum;
  int? number;
  String? type;
  String? version;
  String? layout;
  int? engine_loss_max;
  String? propellant_1;
  String? propellant_2;
  double? thrust_to_weight;

  Engines(
      {  this.isp,
         this.thrust_sea_level,
         this.thrust_vacuum,
         this.number,
         this.type,
         this.version,
         this.layout,
         this.engine_loss_max,
         this.propellant_1,
         this.propellant_2,
         this.thrust_to_weight});


  factory Engines.fromJson(Map<String, dynamic> json) =>_$EnginesFromJson(json);

  Map<String, dynamic> toJson() => _$EnginesToJson(this);
/*
  Engines.fromJson(Map<String, dynamic> json) {
    isp = json['isp'] = Isp.fromJson(json['isp']);
    thrust_sea_level = json['thrust_sea_level'] = ThrustSeaLevel.fromJson(json['thrust_sea_level']);
    thrust_vacuum = json['thrust_vacuum'] = ThrustSeaLevel.fromJson(json['thrust_vacuum']);
    number = json['number'];
    type = json['type'];
    version = json['version'];
    layout = json['layout'];
    engine_loss_max = json['engine_loss_max'];
    propellant_1 = json['propellant_1'];
    propellant_2 = json['propellant_2'];
    thrust_to_weight = json['thrust_to_weight'];
  }
*/

/*  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.isp != null) {
      data['isp'] = this.isp.toJson();
    }
    if (this.thrust_sea_level != null) {
      data['thrust_sea_level'] = this.thrust_sea_level.toJson();
    }
    if (this.thrust_vacuum != null) {
      data['thrust_vacuum'] = this.thrust_vacuum.toJson();
    }
    data['number'] = this.number;
    data['type'] = this.type;
    data['version'] = this.version;
    data['layout'] = this.layout;
    data['engine_loss_max'] = this.engine_loss_max;
    data['propellant_1'] = this.propellant_1;
    data['propellant_2'] = this.propellant_2;
    data['thrust_to_weight'] = this.thrust_to_weight;
    return data;
  }*/
}