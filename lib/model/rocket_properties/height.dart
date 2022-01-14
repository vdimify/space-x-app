import 'package:json_annotation/json_annotation.dart';

part 'height.g.dart';

@JsonSerializable()
class Height {
  double? meters;
  double? feet;

  Height({this.meters, this.feet});

  factory Height.fromJson(Map<String, dynamic> json) =>_$HeightFromJson(json);

  Map<String, dynamic> toJson() => _$HeightToJson(this);

/*  Height.fromJson(Map<String, dynamic> json) {
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