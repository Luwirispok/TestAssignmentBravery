import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:power_bank/app/resources/app_colors.dart';
import 'package:power_bank/gen/assets.gen.dart';

class DefaultAppBar extends StatelessWidget {
  DefaultAppBar({
    required this.title,
    this.needBackButton = true,
  });

  final String title;
  final bool needBackButton;

  @override
  Widget build(BuildContext context) => Container(
        height: 56,
        child: Stack(
          children: [
            Center(
              child: _buildTitle(),
            ),
            if (needBackButton)
              Align(
                alignment: Alignment.topLeft,
                child: _buildBackButton(context),
              ),
          ],
        ),
      );

  Widget _buildTitle() => Text(
        title,
        style: const TextStyle().copyWith(
          fontSize: 21,
          color: AppColors.onSurface1,
        ),
      );

  Widget _buildBackButton(BuildContext context) => GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
          child: SvgPicture.asset(
            Assets.images.backButton,
            height: 24,
            width: 12,
          ),
        ),
      );
}
