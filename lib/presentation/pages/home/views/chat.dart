import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schat/app/config/app_colors.dart';
import 'package:schat/app/config/app_images.dart';
import 'package:schat/presentation/controllers/home/home_controller.dart';
import 'package:schat/presentation/pages/home/widgets/message_line.dart';

class ChatView extends GetView<HomeController> {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) => MessageLine(
            theme: theme,
            index: index,
          ),
          primary: false,
          itemCount: controller.chatItems,
        ),
      ),
    );
  }
}
