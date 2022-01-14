import 'package:json_annotation/json_annotation.dart';

part 'company_links.g.dart';

@JsonSerializable()
class Links {
  late String? website;
  late String? flickr;
  late String? twitter;
  late String? elonTwitter;

  Links({this.website, this.flickr, this.twitter, this.elonTwitter});

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  Map<String, dynamic> toJson() => _$LinksToJson(this);
}
