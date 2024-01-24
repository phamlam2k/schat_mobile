import 'package:get/get.dart';
import 'package:schat/data/repositories/auth_repository_iml.dart';
import 'package:schat/data/repositories/conversation_repository_iml.dart';
import 'package:schat/domain/repositories/auth_repository.dart';
import 'package:schat/domain/repositories/conversation_repository.dart';

class DependencyCreator {
  static init() {
    Get.put<AuthenticationRepository>(AuthenticationRepositoryIml(), permanent: true);
    Get.put<ConversationRepository>(ConversationRepositoryIml(), permanent: true);
  }
}
