import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';
import 'package:power_bank/app/resources/app_colors.dart';

class BaseButton extends StatelessWidget {
  const BaseButton({Key? key,
    this.text,
    this.onPressed,
    this.enabled = true,
    this.color = AppColors.onBackground12,
    this.colorText = AppColors.onAccent1,
    this.textStyle = const TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 17,
      color: AppColors.onAccent1,
    ),
    this.height = 48,
    this.borderRadius = const BorderRadius.all(Radius.circular(16)),
  }) : super(key: key);

  final String? text;
  final VoidCallback? onPressed;
  final bool enabled;
  final Color? color;
  final Color? colorText;
  final TextStyle textStyle;
  final double height;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) => ScaleTap(
        duration: const Duration(milliseconds: 300),
        onPressed: () {
          if (enabled) {
            onPressed?.call();
          }

        },
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            color: enabled ? color : AppColors.inactive,
          ),
          height: height,
          child: Text(
            text!,
            style: textStyle.copyWith(
                color: enabled ? colorText : AppColors.onInactive),
          ),
        ),
      );
}
