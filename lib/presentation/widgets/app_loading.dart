import 'package:flutter/material.dart';
import 'package:schat/app/config/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class AppLoading extends StatelessWidget {
  const AppLoading({
    super.key,
    this.isGridView = false,
    this.count = 4,
    this.crossAxisCount = 2,
    this.childAspectRatio = 0.88,
    this.gap = 16,
    this.borderRadius = const BorderRadius.all(Radius.circular(16)),
  });

  final bool isGridView;
  final int count;
  final int crossAxisCount;
  final double childAspectRatio;
  final double gap;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return isGridView
        ? Shimmer.fromColors(
            baseColor: AppColors.nature30,
            highlightColor: AppColors.nature20,
            enabled: true,
            child: GridView.count(
              padding: EdgeInsets.zero,
              crossAxisCount: crossAxisCount,
              mainAxisSpacing: gap,
              crossAxisSpacing: gap,
              childAspectRatio: childAspectRatio,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(count, (index) {
                // Replace 'Container()' with the widget you want to display for each item.
                return Container(
                  decoration: BoxDecoration(borderRadius: borderRadius, color: AppColors.lightGray),
                );
              }),
            ))
        : Shimmer.fromColors(
            baseColor: AppColors.nature30,
            highlightColor: AppColors.nature20,
            enabled: true,
            child: Column(
              children: List.generate(count, (index) {
                // Replace 'Container()' with the widget you want to display for each item.
                return Padding(
                  padding: EdgeInsets.only(bottom: gap),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(borderRadius: borderRadius, color: AppColors.lightGray),
                  ),
                );
              }),
            ),
          );
  }
}
