import 'diameter.dart';
import 'height.dart';
import 'package:json_annotation/json_annotation.dart';

part 'composite_fairing.g.dart';

@JsonSerializable()
class CompositeFairing {
   Height? height;
   Diameter? diameter;

  CompositeFairing({
     this.height,
     this.diameter
  });

   factory CompositeFairing.fromJson(Map<String, dynamic> json) =>_$CompositeFairingFromJson(json);

   Map<String, dynamic> toJson() => _$CompositeFairingToJson(this);
/*
  CompositeFairing.fromJson(Map<String, dynamic> json) {
    height =
    (json['height'] != null ?  Height.fromJson(json['height']) : null)!;
    diameter = (json['diameter'] != null
        ? Diameter.fromJson(json['diameter'])
        : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['height'] = height.toJson();
    data['diameter'] = diameter.toJson();
    return data;
  }*/
}
