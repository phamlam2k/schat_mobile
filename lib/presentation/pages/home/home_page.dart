import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schat/app/config/app_colors.dart';
import 'package:schat/presentation/controllers/home/home_controller.dart';
import 'package:schat/presentation/pages/home/views/chat.dart';
import 'package:schat/presentation/pages/home/widgets/bottom_bar.dart';
import 'package:schat/presentation/pages/home/widgets/floating_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:schat/presentation/widgets/keyboard_dismiss.dart';

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
            backgroundColor: AppColors.theme,
            body: KeyboardDismiss(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Text(t.conversation, style: const TextStyle(color: AppColors.primary)),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: t.hint_search,
                          filled: true,
                          fillColor: AppColors.nature30,
                          suffixIcon: const Icon(Icons.search),
                          contentPadding: const EdgeInsets.only(left: 8),
                          suffixIconColor: AppColors.primary,
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color: AppColors.nature30),
                              borderRadius: BorderRadius.circular(4.0)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color: AppColors.nature30),
                              borderRadius: BorderRadius.circular(4.0)),
                          hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: AppColors.nature70,
                                fontSize: 14,
                              )),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.darkGreen,
                        width: 1,
                      ),
                    ),
                    child: TabBar(
                      indicator: BoxDecoration(
                        borderRadius: const BorderRadius.only(topRight: Radius.circular(16)),

                        color: AppColors.darkGreen, // Your selected tab background color
                      ),
                      indicatorSize: TabBarIndicatorSize.tab, // This ensures the indicator fills the entire tab
                      labelColor: theme.colorScheme.onPrimary,
                      unselectedLabelColor: AppColors.nature100,
                      labelStyle: theme.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
                      unselectedLabelStyle: theme.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
                      tabs: [
                        Tab(
                          child: Text(t.chat),
                        ),
                        Tab(
                          child: Text(t.channel),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: TabBarView(
                      children: [
                        ChatView(),
                        Center(child: Text('Content for tab 2')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: const BottomBar(),
            floatingActionButton: const MyFloatingActionButton(),
            floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          )),
    );
  }
}
