import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:power_bank/app/resources/app_colors.dart';
import 'package:power_bank/app/widgets/items/menu_item_widget.dart';
import 'package:power_bank/domain/enums/menu_item.dart';
import 'package:power_bank/gen/assets.gen.dart';

import '../../../core/ui/scroll_behavior/disable_glow_effect_scroll_behavior.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({
    Key? key,
    required this.menuItems,
    this.phone,
    required this.menuItemPressed,
    this.correctItem = MenuItemType.findPowerBank,
  }) : super(key: key);

  final List<MenuItemType> menuItems;
  final String? phone;
  final Function(MenuItemType item) menuItemPressed;
  final MenuItemType correctItem;

  @override
  Widget build(BuildContext context) => Drawer(
        backgroundColor: AppColors.background1,
        child: Column(
          children: [
            _buildProfileSelection(),
            Expanded(
              child: _buildMenuItems(),
            ),
            // const Spacer(flex: 168),
            _buildLogo(),
          ],
        ),
      );

  Widget _buildProfileSelection() => Container(
        height: 106,
        width: double.infinity,
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 58, bottom: 24),
        color: AppColors.accent1,
        child: Text(
          phone ?? '',
          style: TextStyle().copyWith(
            fontSize: 25,
            color: AppColors.onAccent1,
            fontWeight: FontWeight.bold,
          ),
        ),
      );

  Widget _buildMenuItems() => ScrollConfiguration(
        behavior: const DisableGrowEffectScrollBehavior(),
        child: ListView.builder(
          padding: const EdgeInsets.only(top: 47),
          itemCount: menuItems.length,
          itemBuilder: (context, index) => MenuItemWidget(
            item: menuItems[index],
            correctItem: correctItem,
            onPressed: () {
              menuItemPressed.call(menuItems[index]);
            },
          ),
        ),
      );

  Widget _buildLogo() => Padding(
        padding: const EdgeInsets.only(right: 48, left: 48, bottom: 24),
        child: SvgPicture.asset(
          Assets.images.logo,
          width: 224,
          height: 54,
        ),
      );
}
