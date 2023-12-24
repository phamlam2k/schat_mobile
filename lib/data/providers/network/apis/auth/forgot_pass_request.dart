import 'package:schat/data/providers/network/api_endpoint.dart';
import 'package:schat/data/providers/network/api_provider.dart';
import 'package:schat/data/providers/network/api_request_representable.dart';

class ForgotPasswordRequest implements APIRequestRepresentable {
  String? email;

  ForgotPasswordRequest({
    this.email,
  });

  @override
  String get baseUrl => BaseUrls.baseUrl;

  @override
  String get endpoint => APIEndpoint.sendOtpForgot;

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
  get body => {"email": email};

  // @override
  // Future request() {
  //   return APIProvider().request(this);
  // }

  @override
  Future request() async {
    final response = await APIProvider().request<Map<String, dynamic>>(this);
    return response!['message'];
  }

  @override
  String get url => baseUrl + endpoint;
}
