import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:schat/app/config/app_colors.dart';
import 'package:schat/app/config/app_text_styles.dart';
import 'package:schat/utils/const.dart';


class PINNumberWidget extends StatelessWidget {
  PINNumberWidget({
    super.key,
    this.onChanged,
    this.onCompleted,
    this.length = Constant.otpLength,
    this.title,
    this.titleStyle,
    this.titleBottomSpacing,
    this.errorText,
    this.enabled = true,
    this.controller,
    this.focusNode,
    this.scrollPadding,
  });

  final Function(String)? onChanged;
  final Function(String)? onCompleted;
  final int length;
  final String? title;
  final String? errorText;
  final TextStyle? titleStyle;
  final double? titleBottomSpacing;
  final bool enabled;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final EdgeInsets? scrollPadding;

  final PinTheme defaultPinTheme = PinTheme(
    height: 40,
    width: 40,
    decoration: BoxDecoration(
      border: Border.all(
        color: AppColors.green,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(4),
    ),
    textStyle: AppTextStyles.largeNumber,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Pinput(
          scrollPadding: scrollPadding ?? const EdgeInsets.all(20),
          focusNode: focusNode,
          controller: controller,
          autofocus: true,
          enabled: enabled,
          length: length,
          separatorBuilder: (_) => SizedBox(
            width: 13,
          ),
          cursor: Container(
            width: 2,
            height: 24,
            color: AppColors.primary,
          ),
          obscureText: true,
          // obscuringWidget: Container(
          //   height: 12,
          //   width: 12,
          //   decoration: BoxDecoration(
          //     shape: BoxShape.circle,
          //     color: AppColors.grey[600],
          //   ),
          // ),
          onChanged: onChanged,
          onCompleted: onCompleted,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          defaultPinTheme: defaultPinTheme,
          followingPinTheme: defaultPinTheme.copyWith(
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: AppColors.grey,
              ),
              color: AppColors.light,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          keyboardType: const TextInputType.numberWithOptions(
            decimal: false,
            signed: false,
          ),
          errorText: errorText,
          focusedPinTheme: defaultPinTheme.copyWith(
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.grey,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        const SizedBox(height: 4,),
        if (errorText != null)
          Text(
            errorText!,
            style: AppTextStyles.bodyTiny.copyWith(color: AppColors.red),
          ),
      ],
    );
  }
}
