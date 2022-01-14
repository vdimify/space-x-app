import 'package:json_annotation/json_annotation.dart';

part 'headquarters.g.dart';

@JsonSerializable()
class Headquarters {
  late String address;
  late String city;
  late String state;

  Headquarters(
      {required this.address, required this.city, required this.state});

  factory Headquarters.fromJson(Map<String, dynamic> json) =>
      _$HeadquartersFromJson(json);

  Map<String, dynamic> toJson() => _$HeadquartersToJson(this);
}
