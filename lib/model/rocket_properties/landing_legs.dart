import 'package:json_annotation/json_annotation.dart';

part 'landing_legs.g.dart';

@JsonSerializable()
class LandingLegs {
  int? number;
  String? material;

  LandingLegs({this.number, this.material});

  factory LandingLegs.fromJson(Map<String, dynamic> json) =>_$LandingLegsFromJson(json);

  Map<String, dynamic> toJson() => _$LandingLegsToJson(this);

/*  LandingLegs.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    material = json['material'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['number'] = number;
    data['material'] = material;
    return data;
  }*/
}