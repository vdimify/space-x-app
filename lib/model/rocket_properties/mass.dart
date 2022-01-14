import 'package:json_annotation/json_annotation.dart';

part 'mass.g.dart';

@JsonSerializable()
class Mass {
  double? kg;
  double? lb;

  Mass({this.kg, this.lb});

  factory Mass.fromJson(Map<String, dynamic> json) =>_$MassFromJson(json);

  Map<String, dynamic> toJson() => _$MassToJson(this);

/*  Mass.fromJson(Map<String, dynamic> json) {
    kg = json['kg'];
    lb = json['lb'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['kg'] = kg;
    data['lb'] = lb;
    return data;
  }*/
}