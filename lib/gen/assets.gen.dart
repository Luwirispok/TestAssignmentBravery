/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsI18nGen {
  const $AssetsI18nGen();

  /// File path: assets/i18n/en.json
  String get en => 'assets/i18n/en.json';

  /// File path: assets/i18n/ru.json
  String get ru => 'assets/i18n/ru.json';
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/address.svg
  String get address => 'assets/images/address.svg';

  /// File path: assets/images/back_button.svg
  String get backButton => 'assets/images/back_button.svg';

  /// File path: assets/images/card.svg
  String get card => 'assets/images/card.svg';

  /// File path: assets/images/close.svg
  String get close => 'assets/images/close.svg';

  /// File path: assets/images/contacts.svg
  String get contacts => 'assets/images/contacts.svg';

  /// File path: assets/images/cooperation.svg
  String get cooperation => 'assets/images/cooperation.svg';

  /// File path: assets/images/description.svg
  String get description => 'assets/images/description.svg';

  /// File path: assets/images/exit.svg
  String get exit => 'assets/images/exit.svg';

  /// File path: assets/images/find_power_bank.svg
  String get findPowerBank => 'assets/images/find_power_bank.svg';

  /// File path: assets/images/free_slot.svg
  String get freeSlot => 'assets/images/free_slot.svg';

  /// File path: assets/images/logo.svg
  String get logo => 'assets/images/logo.svg';

  /// File path: assets/images/marker.png
  AssetGenImage get marker => const AssetGenImage('assets/images/marker.png');

  /// File path: assets/images/master_card_icon.svg
  String get masterCardIcon => 'assets/images/master_card_icon.svg';

  /// File path: assets/images/menu.svg
  String get menu => 'assets/images/menu.svg';

  /// File path: assets/images/mir_icon.svg
  String get mirIcon => 'assets/images/mir_icon.svg';

  /// File path: assets/images/power_bank.svg
  String get powerBank => 'assets/images/power_bank.svg';

  /// File path: assets/images/rent_power_bank.svg
  String get rentPowerBank => 'assets/images/rent_power_bank.svg';

  /// File path: assets/images/tariffs.svg
  String get tariffs => 'assets/images/tariffs.svg';

  /// File path: assets/images/visa_icon.svg
  String get visaIcon => 'assets/images/visa_icon.svg';
}

class Assets {
  Assets._();

  static const $AssetsI18nGen i18n = $AssetsI18nGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}
