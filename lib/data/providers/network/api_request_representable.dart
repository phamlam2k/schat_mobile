
import 'package:schat/data/providers/network/api_endpoint.dart';

enum HTTPMethod { get, post, delete, put, patch }

extension HTTPMethodString on HTTPMethod {
  String get string {
    switch (this) {
      case HTTPMethod.get:
        return "get";
      case HTTPMethod.post:
        return "post";
      case HTTPMethod.delete:
        return "delete";
      case HTTPMethod.patch:
        return "patch";
      case HTTPMethod.put:
        return "put";
    }
  }
}

abstract class APIRequestRepresentable {
  const APIRequestRepresentable();

  String get url => baseUrl + endpoint;

  String get baseUrl => BaseUrls.baseUrl;

  String get endpoint;

  HTTPMethod get method;

  Map<String, String>? get headers => null;

  Map<String, dynamic>? get query => null;

  dynamic get body => null;

  Future request();
}
