import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:schat/app/config/app_colors.dart';
import 'package:schat/app/config/app_images.dart';
import 'package:schat/presentation/controllers/home/home_controller.dart';

class BottomBar extends GetView<HomeController> {
  const BottomBar({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: AppColors.darkBackground,
      notchMargin: 6.0,
      child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(5, (index) => buildTabItem(index: index, icon: controller.getIconForIndex(index)))
            ..add(buildAvatarItem())),
    );
  }

  Widget buildAvatarItem() {
    // Replace with your actual image asset path
    return const CircleAvatar(
      backgroundImage: AssetImage(AppImages.user),
      backgroundColor: Colors.transparent, // Assuming you want no color if the image fails to load
    );
  }

  Widget buildTabItem({required int index, required String icon}) {
    return Obx(() {
      final isSelected = controller.selectedIndex.value == index;
      return Transform.translate(
          offset: isSelected ? const Offset(0, -10) : Offset.zero,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            height: isSelected ? 60.0 : 48.0,
            width: isSelected ? 60.0 : 48.0,
            decoration: isSelected
                ? BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primary,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.darkBackground,
                        blurRadius: 10,
                        spreadRadius: 1,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  )
                : null,
            child: IconButton(
              icon: SvgPicture.asset(
                icon,
                color: isSelected ? AppColors.green : AppColors.lightGrey,
              ),
              onPressed: () => controller.onItemTapped(index),
              iconSize: isSelected ? 30.0 : 24.0,
            ),
          ));
    });
  }
}
