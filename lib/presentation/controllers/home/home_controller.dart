import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schat/app/config/app_icons.dart';

class HomeController extends GetxController {
  var selectedIndex = 0.obs;

  void onItemTapped(int index) {
    selectedIndex.value = index;
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
}