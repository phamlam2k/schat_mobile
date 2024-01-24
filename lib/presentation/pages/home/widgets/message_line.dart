import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:schat/app/config/app_colors.dart';
import 'package:schat/app/config/app_images.dart';
import 'package:schat/app/util/format/time_format.dart';
import 'package:schat/domain/models/conversation/conversation_model.dart';

class MessageLine extends StatelessWidget {
  const MessageLine({
    super.key,
    required this.theme,
    required this.index,
    required this.conversationModel,
  });

  final ThemeData theme;
  final int index;
  final ConversationModel conversationModel;
  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: ValueKey(index),
      startActionPane: ActionPane(
        motion: const ScrollMotion(),
        dismissible: DismissiblePane(onDismissed: () {}),
        children: [
          const SizedBox(width: 4),
          customSlidableAction(
            onPressed: doNothing,
            backgroundColor: AppColors.warning,
            icon: Icons.volume_off_sharp,
            label: 'Mute',
          ),
          const SizedBox(width: 8),
          customSlidableAction(
            onPressed: doNothing,
            backgroundColor: AppColors.lightGray,
            icon: Icons.push_pin,
            label: 'Pin',
          ),
        ],
      ),
      endActionPane: ActionPane(
        extentRatio: 0.75,
        motion: const ScrollMotion(),
        children: [
          const SizedBox(width: 4),
          customSlidableAction(
            onPressed: doNothing,
            backgroundColor: AppColors.lightPrimary,
            icon: Icons.delete,
            label: 'Delete',
          ),
          const SizedBox(width: 8),
          customSlidableAction(
            onPressed: doNothing,
            backgroundColor: AppColors.lightGray,
            icon: Icons.archive,
            label: 'Archive',
          ),
          const SizedBox(width: 8),
          customSlidableAction(
            onPressed: doNothing,
            backgroundColor: AppColors.lightGray.withOpacity(0.3),
            icon: Icons.more_horiz,
            label: 'More',
          ),
          const SizedBox(width: 4),
        ],
      ),
      child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 10,
          ),
          child: Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(AppImages.user),
                backgroundColor: Colors.transparent, // Assuming you want no color if the image fails to load
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          conversationModel.name ?? "",
                          style: theme.textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          TimeFormat.formatTime(conversationModel.lastMessage?.updatedAt),
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: AppColors.green,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "You: ${conversationModel.lastMessage?.conversation}",
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium,
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }

  Widget customSlidableAction({
    required IconData icon,
    required Color backgroundColor,
    required String label,
    Function(BuildContext)? onPressed,
  }) {
    return SlidableAction(
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      foregroundColor: Colors.white,
      icon: icon,
      label: label,
      borderRadius: BorderRadius.circular(16),
    );
  }
}

void doNothing(BuildContext context) {}
