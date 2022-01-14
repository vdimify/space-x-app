import 'package:json_annotation/json_annotation.dart';

part 'isp.g.dart';

@JsonSerializable()
class Isp {
  int? seaLevel;
  int? vacuum;

  Isp({this.seaLevel, this.vacuum});

  factory Isp.fromJson(Map<String, dynamic> json) =>_$IspFromJson(json);

  Map<String, dynamic> toJson() => _$IspToJson(this);
/*  Isp.fromJson(Map<String, dynamic> json) {
    seaLevel = json['sea_level'];
    vacuum = json['vacuum'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['sea_level'] = seaLevel;
    data['vacuum'] = vacuum;
    return data;
  }*/
}