import 'package:space_x_app/model/company_links.dart';
import 'package:space_x_app/model/headquarters.dart';
import 'package:json_annotation/json_annotation.dart';

part 'company_info.g.dart';

@JsonSerializable()
class CompanyInfo {
  late String id;
  late Headquarters headquarters;
  late Links links;
  late String name;
  late String founder;
  late int founded;
  late int employees;
  late int vehicles;
  late int launchSites;
  late int testSites;
  late String ceo;
  late String cto;
  late String coo;
  late String ctoPropulsion;
  late int valuation;
  late String summary;

  CompanyInfo(
      {required this.id,
      required this.headquarters,
      required this.links,
      required this.name,
      required this.founder,
      required this.founded,
      required this.employees,
      required this.vehicles,
      required this.launchSites,
      required this.testSites,
      required this.ceo,
      required this.cto,
      required this.coo,
      required this.ctoPropulsion,
      required this.valuation,
      required this.summary});

  factory CompanyInfo.fromJson(Map<String, dynamic> json) =>
      _$CompanyInfoFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyInfoToJson(this);

  Map<String, String> asMap() {
    Map<String, String> companyInfoAsMap = {
      "Name": name,
      "Founder": founder,
      "Founded": founded.toString(),
      "Contacts": getAvailableLinks(),
      "CEO": ceo,
      "CTO": cto,
      "CTO Propulsion": ctoPropulsion.toString(),
      "Employees Count": employees.toString(),
      "Vehicles": vehicles.toString(),
      "Launch Sites": launchSites.toString(),
      "Test Sites": testSites.toString(),
      "Valuation": valuation.toString(),
      "Summary": summary,
    };

    companyInfoAsMap.removeWhere((key, value) => value == "null");
    return companyInfoAsMap;
  }

  String getLinks() =>
      ("Website : ${links.website}\nFlickr : ${links.flickr}\nTwitter : ${links.twitter}\nElon's Twitter : ${links.elonTwitter}");

  String getAvailableLinks() {
    StringBuffer buffer = StringBuffer();
    links.website != null
        ? buffer.write("Website : ${links.website}\n")
        : buffer.write("");
    links.flickr != null
        ? buffer.write("Flickr : ${links.website}\n")
        : buffer.write("");
    links.twitter != null
        ? buffer.write("Twitter : ${links.website}\n")
        : buffer.write("");
    links.elonTwitter != null
        ? buffer.write("Elon's Twitter : ${links.website}")
        : buffer.write("");
    return buffer.toString();
  }
}
