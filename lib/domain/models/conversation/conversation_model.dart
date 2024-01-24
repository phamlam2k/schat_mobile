import 'package:json_annotation/json_annotation.dart';

part 'conversation_model.g.dart';

@JsonSerializable()
class ConversationModel {
  String? sId;
  String? name;
  List<Members>? members;
  List<Nicknames>? nicknames;
  String? type;
  List? admin;
  List? join;
  String? createdAt;
  String? updatedAt;
  LastMessage? lastMessage;

  ConversationModel(
      {this.sId,
      this.name,
      this.members,
      this.nicknames,
      this.type,
      this.admin,
      this.join,
      this.createdAt,
      this.updatedAt,
      this.lastMessage});

  factory ConversationModel.fromJson(Map<String, dynamic> json) => _$ConversationModelFromJson(json);

  Map<String, dynamic> toJson() => _$ConversationModelToJson(this);
}

@JsonSerializable()
class Members {
  String? sId;
  String? fullName;
  String? email;
  String? username;
  String? avatarUrl;
  String? avatarColor;
  String? coverImage;
  String? nameColor;

  Members(
      {this.sId,
      this.fullName,
      this.email,
      this.username,
      this.avatarUrl,
      this.avatarColor,
      this.coverImage,
      this.nameColor});

  factory Members.fromJson(Map<String, dynamic> json) => _$MembersFromJson(json);

  Map<String, dynamic> toJson() => _$MembersToJson(this);
}

@JsonSerializable()
class Nicknames {
  String? user;
  String? nickname;
  String? sId;
  String? createdAt;
  String? updatedAt;

  Nicknames({this.user, this.nickname, this.sId, this.createdAt, this.updatedAt});

  factory Nicknames.fromJson(Map<String, dynamic> json) => _$NicknamesFromJson(json);

  Map<String, dynamic> toJson() => _$NicknamesToJson(this);
}

@JsonSerializable()
class LastMessage {
  String? sId;
  String? author;
  String? conversation;
  String? text;
  bool? revoked;
  bool? gim;
  List? files;
  List? reactions;
  String? createdAt;
  String? updatedAt;

  LastMessage(
      {this.sId,
      this.author,
      this.conversation,
      this.text,
      this.revoked,
      this.gim,
      this.files,
      this.reactions,
      this.createdAt,
      this.updatedAt});

  factory LastMessage.fromJson(Map<String, dynamic> json) => _$LastMessageFromJson(json);

  Map<String, dynamic> toJson() => _$LastMessageToJson(this);
}
