import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:schat/domain/models/conversation/conversation_model.dart';
import 'package:schat/presentation/controllers/home/home_controller.dart';
import 'package:schat/presentation/pages/home/widgets/message_line.dart';
import 'package:schat/presentation/widgets/app_loading.dart';

class ChatView extends GetView<HomeController> {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return RefreshIndicator(
        onRefresh: () async {
          Future.sync(() => controller.pagingController.refresh());
        },
        child: PagedListView<int, ConversationModel>(
          pagingController: controller.pagingController,
          padding: const EdgeInsets.only(top: 16.0),
          builderDelegate: PagedChildBuilderDelegate<ConversationModel>(
            itemBuilder: (context, item, index) {
              return MessageLine(
                theme: theme,
                index: index,
                conversationModel: item,
              );
            },
            firstPageProgressIndicatorBuilder: (context) => const Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: AppLoading(
                count: 5,
              ),
            ),
            firstPageErrorIndicatorBuilder: (context) => const Text('Error loading first page'),
            noItemsFoundIndicatorBuilder: (context) => const Text('No items found'),
          ),
        ));
  }
}
