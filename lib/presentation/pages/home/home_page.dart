import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schat/app/config/app_colors.dart';
import 'package:schat/presentation/controllers/home/home_controller.dart';
import 'package:schat/presentation/pages/home/widgets/bottom_bar.dart';
import 'package:schat/presentation/pages/home/widgets/floating_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final theme = Theme.of(context);
    final t = AppLocalizations.of(context)!;
    return SafeArea(
      child: DefaultTabController(
          length: 2,
          child: Scaffold(
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                ),
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child:
                      Text(t.conversation, style: const TextStyle(color: AppColors.primary)),
                ),
                Container(
                  margin: const EdgeInsets.all(16.0),
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[
                        200], // Light grey color for the search bar background
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child:  TextField(
                    decoration: InputDecoration(
                      hintText: t.hint_search,
                      icon: const Icon(Icons.search, color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                TabBar(
                  indicator: BoxDecoration(
                    color: AppColors.darkGreen,
                  ),

                  labelColor: theme.colorScheme.onPrimary,
                  unselectedLabelColor: AppColors.nature100,
                  labelStyle: theme.textTheme.titleSmall
                      ?.copyWith(fontWeight: FontWeight.w600),
                  //For Selected tab
                  unselectedLabelStyle: theme.textTheme.titleSmall
                      ?.copyWith(fontWeight: FontWeight.w600),
                  splashBorderRadius: BorderRadius.circular(20),
                  tabs: [
                    Tab(text:t.chat),
                    Tab(text: t.channel),
                  ],
                ),
                const Expanded(
                  child: TabBarView(
                    children: [
                      Center(child: Text('Content for tab 1')),
                      Center(child: Text('Content for tab 2')),
                    ],
                  ),
                ),
              ],
            ),
            bottomNavigationBar: const BottomBar(),
            floatingActionButton: const MyFloatingActionButton(),
            floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          )),
    );
  }
}
