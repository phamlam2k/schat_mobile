
import 'package:schat/domain/models/conversation/conversation_model.dart';
import 'package:schat/domain/models/paging.dart';

abstract class ConversationRepository {
  Future<Paging<ConversationModel>> getConversationList();
}
