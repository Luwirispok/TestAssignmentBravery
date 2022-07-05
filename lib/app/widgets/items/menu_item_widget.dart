import 'package:flutter/material.dart';
import 'package:power_bank/domain/enums/menu_item.dart';

import '../../resources/app_colors.dart';

class MenuItemWidget extends StatelessWidget {
  MenuItemWidget({
    Key? key,
    required this.item,
    this.onPressed,
    this.correctItem = MenuItemType.findPowerBank,
  }) : super(key: key);

  final MenuItemType item;
  final VoidCallback? onPressed;
  final MenuItemType correctItem;

  @override
  Widget build(BuildContext context) {
    bool thisIsCorrectItem = item == correctItem;
    return InkWell(
      onTap: () {
        thisIsCorrectItem = true;
        onPressed?.call();

      },
      splashColor: AppColors.splashColor,
      // highlightColor: AppColors.highlightColor,
      child: Ink(
        height: 56,
        width: double.infinity,
        color: thisIsCorrectItem ? AppColors.green : AppColors.white,
        child: Row(
          children: [
            _buildLogo(thisIsCorrectItem),
            _buildTitle(context, thisIsCorrectItem),
          ],
        ),
      ),
    );
  }

  Widget _buildLogo(bool thisIsCorrectItem) {
    Color color = thisIsCorrectItem ? AppColors.white : AppColors.green;
    return Padding(
      padding: const EdgeInsets.only(
        left: 64,
        right: 9,
        top: 17,
        bottom: 15,
      ),
      child: MenuItemExtension(item).getIconAssets(color),
    );
  }

  Widget _buildTitle(BuildContext context, bool thisIsCorrectItem) {
    Color color = thisIsCorrectItem ? AppColors.white : AppColors.black;
    return Padding(
      padding: EdgeInsets.only(
        top: 17,
        bottom: 15,
      ),
      child: Text(
        MenuItemExtension(item).getTitle(context),
        style: TextStyle().copyWith(
          fontSize: 17,
          color: color,
        ),
      ),
    );
  }
}
