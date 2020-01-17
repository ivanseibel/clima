import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  final String uri;

  NetworkHelper({this.uri});

  Future getData() async {
    http.Response response = await http.get(uri);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return data;
    } else {
      print(response.statusCode);
    }
  }
}
