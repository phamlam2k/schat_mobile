import 'package:json_annotation/json_annotation.dart';


part 'user_context.g.dart';

@JsonSerializable()
class UserContext {
  String? accessToken;


  UserContext({
  
    this.accessToken,
  });

  factory UserContext.fromJson(Map<String, dynamic> json) {
    return _$UserContextFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserContextToJson(this);
}
