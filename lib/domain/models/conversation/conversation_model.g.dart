// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConversationModel _$ConversationModelFromJson(Map<String, dynamic> json) =>
    ConversationModel(
      sId: json['sId'] as String?,
      name: json['name'] as String?,
      members: (json['members'] as List<dynamic>?)
          ?.map((e) => Members.fromJson(e as Map<String, dynamic>))
          .toList(),
      nicknames: (json['nicknames'] as List<dynamic>?)
          ?.map((e) => Nicknames.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] as String?,
      admin: json['admin'] as List<dynamic>?,
      join: json['join'] as List<dynamic>?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      lastMessage: json['lastMessage'] == null
          ? null
          : LastMessage.fromJson(json['lastMessage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConversationModelToJson(ConversationModel instance) =>
    <String, dynamic>{
      'sId': instance.sId,
      'name': instance.name,
      'members': instance.members,
      'nicknames': instance.nicknames,
      'type': instance.type,
      'admin': instance.admin,
      'join': instance.join,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'lastMessage': instance.lastMessage,
    };

Members _$MembersFromJson(Map<String, dynamic> json) => Members(
      sId: json['sId'] as String?,
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      username: json['username'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      avatarColor: json['avatarColor'] as String?,
      coverImage: json['coverImage'] as String?,
      nameColor: json['nameColor'] as String?,
    );

Map<String, dynamic> _$MembersToJson(Members instance) => <String, dynamic>{
      'sId': instance.sId,
      'fullName': instance.fullName,
      'email': instance.email,
      'username': instance.username,
      'avatarUrl': instance.avatarUrl,
      'avatarColor': instance.avatarColor,
      'coverImage': instance.coverImage,
      'nameColor': instance.nameColor,
    };

Nicknames _$NicknamesFromJson(Map<String, dynamic> json) => Nicknames(
      user: json['user'] as String?,
      nickname: json['nickname'] as String?,
      sId: json['sId'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$NicknamesToJson(Nicknames instance) => <String, dynamic>{
      'user': instance.user,
      'nickname': instance.nickname,
      'sId': instance.sId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

LastMessage _$LastMessageFromJson(Map<String, dynamic> json) => LastMessage(
      sId: json['sId'] as String?,
      author: json['author'] as String?,
      conversation: json['conversation'] as String?,
      text: json['text'] as String?,
      revoked: json['revoked'] as bool?,
      gim: json['gim'] as bool?,
      files: json['files'] as List<dynamic>?,
      reactions: json['reactions'] as List<dynamic>?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$LastMessageToJson(LastMessage instance) =>
    <String, dynamic>{
      'sId': instance.sId,
      'author': instance.author,
      'conversation': instance.conversation,
      'text': instance.text,
      'revoked': instance.revoked,
      'gim': instance.gim,
      'files': instance.files,
      'reactions': instance.reactions,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
