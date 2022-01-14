import 'package:json_annotation/json_annotation.dart';

part 'diameter.g.dart';

@JsonSerializable()
class Diameter {
  late double? meters;
  late double? feet;

  Diameter({required this.meters, required this.feet});

  factory Diameter.fromJson(Map<String, dynamic> json) =>_$DiameterFromJson(json);

  Map<String, dynamic> toJson() => _$DiameterToJson(this);

/*  Diameter.fromJson(Map<String, dynamic> json) {
    meters = json['meters'];
    feet = json['feet'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['meters'] = meters;
    data['feet'] = feet;
    return data;
  }*/
}