import 'package:schat/data/providers/network/api_endpoint.dart';
import 'package:schat/data/providers/network/api_provider.dart';
import 'package:schat/data/providers/network/api_request_representable.dart';

enum AuthType { logout }

class LogoutAPI implements APIRequestRepresentable {
  final AuthType type;
  String? username;
  String? email;
  String? password;
  String? code;
  bool? resendCode;

  LogoutAPI._({required this.type, this.password, this.username, this.email, this.code, this.resendCode});

  LogoutAPI.logout({required String email}) : this._(type: AuthType.logout, email: email);

  @override
  String get baseUrl => BaseUrls.baseUrl;

  @override
  String get endpoint {
    switch (type) {
      case AuthType.logout:
        return APIEndpoint.logout;
    }
  }

  @override
  HTTPMethod get method {
    return HTTPMethod.post;
  }

  @override
  Map<String, String>? get headers => null;

  @override
  Map<String, String>? get query {
    return null;
  }

  @override
  get body {
    switch (type) {
      case AuthType.logout:
        return {"email": email};
    }
  }

  @override
  Future request() {
    return APIProvider().request(this);
  }

  @override
  String get url => baseUrl + endpoint;
}
