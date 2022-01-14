import 'package:json_annotation/json_annotation.dart';

part 'payload_weight.g.dart';

@JsonSerializable()
class PayloadWeights {
  String? id;
  String? name;
  double? kg;
  double? lb;

  PayloadWeights({
    required this.id,
    required this.name,
    required this.kg,
    required this.lb});

  factory PayloadWeights.fromJson(Map<String, dynamic> json) =>_$PayloadWeightsFromJson(json);

  Map<String, dynamic> toJson() => _$PayloadWeightsToJson(this);

 /* PayloadWeights.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    kg = json['kg'];
    lb = json['lb'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['kg'] = kg;
    data['lb'] = lb;
    return data;
  }*/
}