import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schat/presentation/controllers/home/home_controller.dart';
import 'package:schat/presentation/pages/home/widgets/bottom_bar.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Center(
            child: Text('Select an item ${controller.selectedIndex}'),
          )),
      bottomNavigationBar: BottomBar(),
    );
  }
}
