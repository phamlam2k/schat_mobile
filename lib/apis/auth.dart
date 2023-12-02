import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:async';

import 'package:schat/utils/api_endpoint.dart';

Future login(String account, String password) async {
  Map<String, dynamic> request = {'account': account, 'password': password};

  final uri =
      Uri.parse(ApiEndPoint.baseUrl + ApiEndPoint.authEndPoints.loginApi);
  http.Response response = await http.post(uri, body: request);

  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    final errorData = json.decode(response.body);
    String errorMessage = errorData['message'] ?? 'Lỗi không xác định';

    throw Exception(errorMessage);
  }
}

Future register(String fullName, String email, String password) async {
  Map<String, dynamic> request = {
    'fullName': fullName,
    'email': email,
    'password': password
  };

  final uri =
      Uri.parse(ApiEndPoint.baseUrl + ApiEndPoint.authEndPoints.registerApi);
  http.Response response = await http.post(uri, body: request);

  if (response.statusCode == 201) {
    return json.decode(response.body);
  } else {
    throw Exception(json.decode(response.body));
  }
}
