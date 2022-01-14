import 'package:space_x_app/model/rocket_properties/composite_fairing.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payload.g.dart';

@JsonSerializable()
class Payloads {
  CompositeFairing? composite_fairing;
  String? option1;

  Payloads({this.composite_fairing, this.option1});

  factory Payloads.fromJson(Map<String, dynamic> json) =>_$PayloadsFromJson(json);

  Map<String, dynamic> toJson() => _$PayloadsToJson(this);
/*  Payloads.fromJson(Map<String, dynamic> json) {
    composite_fairing = json['composite_fairing'] != null
        ? CompositeFairing.fromJson(json['composite_fairing'])
        : null;
    option1 = json['option_1'];
  }*/

/*  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (composite_fairing != null) {
      data['composite_fairing'] = composite_fairing.toJson();
    }
    data['option_1'] = option1;
    return data;
  }*/
}