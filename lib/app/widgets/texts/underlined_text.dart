import 'package:flutter/material.dart';
import 'package:power_bank/app/resources/app_colors.dart';

class UnderlinedText extends StatelessWidget {
  UnderlinedText(
    this.text, {
    this.style = const TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 13,
      color: AppColors.onBackground13,
      height: 18 / 13,
    ),
    this.bottom = 3,
    this.lineColor = AppColors.onBackground13,
    this.onPressed, this.widthBorder = 1,
  });

  final double bottom;
  final String text;
  final VoidCallback? onPressed;
  final TextStyle style;
  final Color lineColor;
  final double widthBorder;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          onPressed?.call();
        },
        child: Container(
          padding: EdgeInsets.only(bottom: bottom),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: lineColor, width: widthBorder,),
            ),
          ),
          child: Text(
            text,
            style: style,
          ),
        ),
      );
}
