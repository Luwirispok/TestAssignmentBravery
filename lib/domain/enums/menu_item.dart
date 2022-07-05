import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:power_bank/gen/assets.gen.dart';
import 'package:power_bank/localization/app_localizations.dart';

enum MenuItemType {
  findPowerBank,
  rentPowerBank,
  myCards,
  tariffs,
  contacts,
  aboutService,
  cooperation,
  exit,
}

extension MenuItemExtension on MenuItemType {
  String getTitle(BuildContext context) {
    switch (this) {
      case MenuItemType.findPowerBank:
        return AppLocalizations.of(context).findPowerBank;
      case MenuItemType.rentPowerBank:
        return AppLocalizations.of(context).rentPowerBank;
      case MenuItemType.myCards:
        return AppLocalizations.of(context).myCards;
      case MenuItemType.tariffs:
        return AppLocalizations.of(context).tariffs;
      case MenuItemType.contacts:
        return AppLocalizations.of(context).contacts;
      case MenuItemType.aboutService:
        return AppLocalizations.of(context).aboutService;
      case MenuItemType.cooperation:
        return AppLocalizations.of(context).cooperation;
      case MenuItemType.exit:
        return AppLocalizations.of(context).exit;
    }
  }

  SvgPicture getIconAssets(Color color) {
    double height = 24;
    double width = 24;
    switch (this) {
      case MenuItemType.findPowerBank:
        return SvgPicture.asset(
          Assets.images.findPowerBank,
          height: height,
          width: width,
          color: color,
        );
      case MenuItemType.rentPowerBank:
        return SvgPicture.asset(
          Assets.images.rentPowerBank,
          height: height,
          width: width,
          color: color,
        );
      case MenuItemType.myCards:
        return SvgPicture.asset(
          Assets.images.card,
          height: height,
          width: width,
          color: color,
        );
      case MenuItemType.tariffs:
        return SvgPicture.asset(
          Assets.images.tariffs,
          height: height,
          width: width,
          color: color,
        );
      case MenuItemType.contacts:
        return SvgPicture.asset(
          Assets.images.contacts,
          height: height,
          width: width,
          color: color,
        );
      case MenuItemType.aboutService:
        return SvgPicture.asset(
          Assets.images.description,
          height: height,
          width: width,
          color: color,
        );
      case MenuItemType.cooperation:
        return SvgPicture.asset(
          Assets.images.cooperation,
          height: height,
          width: width,
          color: color,
        );
      case MenuItemType.exit:
        return SvgPicture.asset(
          Assets.images.exit,
          height: height,
          width: width,
          color: color,
        );
    }
  }
}
