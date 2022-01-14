import 'dart:convert';

import 'package:space_x_app/api/base_service.dart';
import 'package:space_x_app/model/company_info.dart';

class GetCompanyInfoService extends BaseService {
  Future<Map<String, String>> getCompanyInfo() async {
    try {
      String response = await getData("v4/company");
      var json = jsonDecode(response);
      CompanyInfo info = CompanyInfo.fromJson(json as Map<String, dynamic>);
      return info.asMap();
    } catch (e) {
      rethrow;
    }
  }
}
