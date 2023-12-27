import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schat/app/config/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:schat/presentation/controllers/home/home_controller.dart';

class MyFloatingActionButton extends GetView<HomeController> {
  const MyFloatingActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => _showMenu(context),
      backgroundColor: AppColors.green,
      elevation: 4.0,
      child: const Icon(Icons.add),
    );
  }

  void _showMenu(BuildContext context) {
    final overlay = Overlay.of(context);

    late OverlayEntry overlayEntry;

    OverlayEntry createOverlayEntry() {
      final t = AppLocalizations.of(context)!;
      return OverlayEntry(
        builder: (context) => Stack(
          children: [
            Positioned.fill(
              child: GestureDetector(
                onTap: () {
                  overlayEntry.remove();
                },
                child: Container(
                  color: Colors.black26,
                ),
              ),
            ),
            Positioned(
              bottom: kToolbarHeight + 80,
              right: 8,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SpeechBubble(
                      text: t.add_conversation,
                      icon: Icons.chat,
                    ),
                    const SizedBox(height: 8),
                    SpeechBubble(
                        text: t.add_group,
                        icon: Icons.group_add,
                        onTap: () {
                          overlayEntry.remove();
                          controller.onLogout();
                        }),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    overlayEntry = createOverlayEntry(); // Create the overlay entry
    overlay.insert(overlayEntry); // Insert the overlay entry into the overlay
  }
}

class SpeechBubble extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onTap;

  const SpeechBubble({
    Key? key,
    required this.text,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, color: Colors.green),
              const SizedBox(width: 16),
              Text(text, style: const TextStyle(color: Colors.black)),
            ],
          ),
        ),
      ),
    );
  }
}
