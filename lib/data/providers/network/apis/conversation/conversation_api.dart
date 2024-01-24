import 'package:schat/data/providers/network/api_endpoint.dart';
import 'package:schat/data/providers/network/api_provider.dart';
import 'package:schat/data/providers/network/api_request_representable.dart';

enum ConversationType { getConversationList }

class ConversationAPI implements APIRequestRepresentable {
  final ConversationType type;
  String? username;
  String? email;
  String? password;
  String? code;
  bool? resendCode;

  ConversationAPI._({required this.type, this.password, this.username, this.email, this.code, this.resendCode});

  ConversationAPI.getConversationList()
      : this._(type: ConversationType.getConversationList);

  @override
  String get baseUrl => BaseUrls.baseUrl;

  @override
  String get endpoint {
    switch (type) {
      case ConversationType.getConversationList:
        return APIEndpoint.getConversationList;
    }
  }

  @override
  HTTPMethod get method {
    return HTTPMethod.get;
  }

  @override
  Map<String, String>? get headers => null;

  @override
  Map<String, String>? get query {
    return null;
  }

  @override
  get body {}

  @override
  Future request() {
    return APIProvider().request(this);
  }

  @override
  String get url => baseUrl + endpoint;
}
