// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_context.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserContext _$UserContextFromJson(Map<String, dynamic> json) => UserContext(
      accessToken: json['accessToken'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$UserContextToJson(UserContext instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'user': instance.user,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      sId: json['sId'] as String?,
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      username: json['username'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      avatarColor: json['avatarColor'] as String?,
      coverImage: json['coverImage'] as String?,
      nameColor: json['nameColor'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'sId': instance.sId,
      'fullName': instance.fullName,
      'email': instance.email,
      'username': instance.username,
      'avatarUrl': instance.avatarUrl,
      'avatarColor': instance.avatarColor,
      'coverImage': instance.coverImage,
      'nameColor': instance.nameColor,
      'id': instance.id,
    };
