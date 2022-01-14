import 'package:json_annotation/json_annotation.dart';

part 'thrust_sea_level.g.dart';

@JsonSerializable()
class ThrustSeaLevel {
  double? kN;
  double? lbf;

  ThrustSeaLevel({
     this.kN,
     this.lbf});

  factory ThrustSeaLevel.fromJson(Map<String, dynamic> json) =>_$ThrustSeaLevelFromJson(json);

  Map<String, dynamic> toJson() => _$ThrustSeaLevelToJson(this);

 /* ThrustSeaLevel.fromJson(Map<String, dynamic> json) {
    kN = json['kN'];
    lbf = json['lbf'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['kN'] = kN;
    data['lbf'] = lbf;
    return data;
  }*/
}