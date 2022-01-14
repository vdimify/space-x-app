import 'dart:convert';

import 'package:http/http.dart' show Client, Response;

class BaseService {
  final Client client = Client();
  final String basePath = 'https://api.spacexdata.com/';

  Future<String> getData(String url) async {
    try {
      String uri = basePath + url;
      final Response response = await client.get(Uri.parse(uri));
      if (response.statusCode == 200) {
        return utf8.decode(response.bodyBytes);
      } else {
        return Future.error('There was an error');
      }
    } catch (e) {
      rethrow;
    }
  }
}
