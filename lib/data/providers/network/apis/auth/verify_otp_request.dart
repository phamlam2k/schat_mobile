import 'package:schat/data/providers/network/api_endpoint.dart';
import 'package:schat/data/providers/network/api_provider.dart';
import 'package:schat/data/providers/network/api_request_representable.dart';

class VerifyOtpRequest implements APIRequestRepresentable {
  String? email;
  String? otp;

  VerifyOtpRequest({
    this.email,
    this.otp,
  });

  @override
  String get baseUrl => BaseUrls.baseUrl;

  @override
  String get endpoint => APIEndpoint.verifyOtp;

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
  get body => {"email": email, "otp": otp};

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
