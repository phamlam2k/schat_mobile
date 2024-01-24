import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:schat/app/config/app_icons.dart';
import 'package:schat/app/core/exceptions/api_response_exception.dart';
import 'package:schat/app/helpers/snack_bar_helper.dart';
import 'package:schat/domain/models/conversation/conversation_model.dart';
import 'package:schat/domain/repositories/conversation_repository.dart';
import 'package:schat/presentation/controllers/app/app_controller.dart';
import 'package:schat/presentation/controllers/auth/auth_controller.dart';

class HomeController extends GetxController {
  var selectedIndex = 0.obs;

  PagingController<int, ConversationModel> pagingController =
      PagingController(firstPageKey: 1, invisibleItemsThreshold: 3);

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }

  final AuthController authController;
  final AppController appController;
  final ConversationRepository conversationRepository;
  final int chatItems = 9;
  static int limit = 10;

  HomeController({
    required this.authController,
    required this.conversationRepository,
    required this.appController,
  });

  @override
  void onInit() {
    super.onInit();
    pagingController.addPageRequestListener((pageKey) {
      fetchPage(pageKey);
    });
  }

  Future<void> fetchPage(int pageKey) async {
    try {
      final conversationList = await conversationRepository.getConversationList();
      bool isLastPage = conversationList.totalResults <= pageKey * limit;
      if (isLastPage) {
        pagingController.appendLastPage(conversationList.data.map((item) {
          return item;
        }).toList());
      } else {
        final nextPageKey = pageKey + 1;
        pagingController.appendPage(
            conversationList.data.map((item) {
              return item;
            }).toList(),
            nextPageKey);
      }
    } on APIResponseException catch (e) {
      SnackbarHelper.errorSnackbar(e.message);
    } catch (e) {
      SnackbarHelper.errorSnackbar(e.toString());
    }
  }

  String getIconForIndex(int index) {
    switch (index) {
      case 0:
        return AppIcons.conversation;
      case 1:
        return AppIcons.friends;
      case 2:
        return AppIcons.bookmarks;
      case 3:
        return AppIcons.cog;
      default:
        return AppIcons.conversation;
    }
  }

  void onLogout() {
    authController.onLogout();
  }
}
