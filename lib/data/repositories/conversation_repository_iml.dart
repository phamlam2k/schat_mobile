import 'package:schat/data/providers/network/apis/auth/auth_api.dart';
import 'package:schat/data/providers/network/apis/auth/logout_api.dart';
import 'package:schat/data/providers/network/apis/conversation/conversation_api.dart';
import 'package:schat/domain/models/conversation/conversation_model.dart';
import 'package:schat/domain/models/paging.dart';
import 'package:schat/domain/models/user_context/user_context.dart';
import 'package:schat/domain/repositories/conversation_repository.dart';

class ConversationRepositoryIml extends ConversationRepository {
  @override
  Future<Paging<ConversationModel>> getConversationList() async {
    final response = await ConversationAPI.getConversationList().request();

    final List<dynamic> data = response['metadata'];
    final List<ConversationModel> conversationList = data.map((order) => ConversationModel.fromJson(order)).toList();
    final int totalCount = response['pagination']['totalPages'] as int;
    return Paging(data: conversationList, totalResults: totalCount);
  }
}
