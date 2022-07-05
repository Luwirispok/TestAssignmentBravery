import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../gen/assets.gen.dart';
import '../../resources/app_colors.dart';

class NavigationAppBar extends StatelessWidget {
  const NavigationAppBar({
    Key? key,
    this.title,
    this.leadingButtonPressed,
  }) : super(key: key);

  final String? title;
  final VoidCallback? leadingButtonPressed;

  @override
  Widget build(BuildContext context) => Container(
        height: 56,
        decoration: BoxDecoration(
          color: AppColors.background1,
          boxShadow: [
            BoxShadow(
              color: AppColors.shadow,
              spreadRadius: 0,
              blurRadius: 8,
              offset: Offset(4, 4),
            )
          ],
        ),
        child: Stack(
          children: [
            Center(
              child: _buildTitle(),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: _buildMenuButton(context),
            ),
          ],
        ),
      );

  Widget _buildTitle() => Text(
        title!,
        style: const TextStyle().copyWith(
          fontSize: 21,
          color: AppColors.onSurface1,
        ),
      );

  Widget _buildMenuButton(BuildContext context) => GestureDetector(
        onTap: leadingButtonPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 18),
          child: SvgPicture.asset(
            Assets.images.menu,
            height: 18,
            width: 23.5,
          ),
        ),
      );
}
