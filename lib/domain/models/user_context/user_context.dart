import 'package:json_annotation/json_annotation.dart';

part 'user_context.g.dart';

@JsonSerializable()
class UserContext {
  String? accessToken;
  String? refreshToken;
  User? user;

  UserContext({
    this.accessToken,
    this.user,
    this.refreshToken,
  });

  factory UserContext.fromJson(Map<String, dynamic> json) => _$UserContextFromJson(json);

  Map<String, dynamic> toJson() => _$UserContextToJson(this);
}

@JsonSerializable()
class User {
  String? sId;
  String? fullName;
  String? email;
  String? username;
  String? avatarUrl;
  String? avatarColor;
  String? coverImage;
  String? nameColor;
  String? id;

  User(
      {this.sId,
      this.fullName,
      this.email,
      this.username,
      this.avatarUrl,
      this.avatarColor,
      this.coverImage,
      this.nameColor,
      this.id});
  
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
