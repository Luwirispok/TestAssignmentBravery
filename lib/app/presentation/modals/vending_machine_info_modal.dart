import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:power_bank/app/resources/app_colors.dart';
import 'package:power_bank/app/widgets/buttons/base_button.dart';
import 'package:power_bank/app/widgets/items/vending_machine_modal_item.dart';
import 'package:power_bank/core/ui/scroll_behavior/disable_glow_effect_scroll_behavior.dart';
import 'package:power_bank/domain/entities/network/vending_machine_test.dart';
import 'package:power_bank/gen/assets.gen.dart';
import 'package:power_bank/localization/app_localizations.dart';

class VendingMachineInfoModal extends StatelessWidget {
  const VendingMachineInfoModal({
    Key? key,
    required this.vendingMachine,
    required this.rentPressed,
    required this.exitPressed,
  }) : super(key: key);

  final VendingMachineTest vendingMachine;
  final VoidCallback rentPressed;
  final VoidCallback exitPressed;

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: _buildModal(context),
          ),
          Positioned(
            bottom: 304,
            right: 4,
            child: _buildCloseModal(),
          ),
        ],
      );

  Widget _buildModal(BuildContext context) => Container(
        height: 304,
        margin: const EdgeInsets.only(right: 16, left: 16, bottom: 12),
        padding: const EdgeInsets.symmetric(
          vertical: 24,
        ),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24),
          ),
          boxShadow: [
            BoxShadow(
              offset: const Offset(4, 4),
              blurRadius: 8,
              spreadRadius: 0,
              color: AppColors.shadow,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitle(context),
            const SizedBox(height: 12),
            _buildBody(context),
            const SizedBox(height: 10),
            _buildSelectButton(context),
          ],
        ),
      );

  Widget _buildCloseModal() => GestureDetector(
        onTap: exitPressed,
        child: SvgPicture.asset(
          Assets.images.close,
          height: 24,
          width: 24,
        ),
      );

  Widget _buildTitle(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          AppLocalizations.of(context).informationAboutVendingMachine,
          textAlign: TextAlign.start,
          style: TextStyle().copyWith(
            color: AppColors.onSurface1,
            fontSize: 19,
            height: 24 / 19,
            fontWeight: FontWeight.w700,
          ),
        ),
      );

  Widget _buildBody(BuildContext context) => Expanded(
        child: ScrollConfiguration(
          behavior: const DisableGrowEffectScrollBehavior(),
          child: SingleChildScrollView(
            child: Column(
              children: [
                VendingMachineModalItem(
                  icon: Assets.images.address,
                  description: vendingMachine.address,
                  descriptionInBold: true,
                ),
                VendingMachineModalItem(
                  icon: Assets.images.powerBank,
                  title: AppLocalizations.of(context).availablePowerBanks + ' - ',
                  description: vendingMachine.availableProductCount.toString(),
                  descriptionInBold: true,
                ),
                VendingMachineModalItem(
                  icon: Assets.images.freeSlot,
                  title: AppLocalizations.of(context).freeSlots + ' - ',
                  description: vendingMachine.freePlacesCount.toString(),
                  descriptionInBold: true,
                ),
                VendingMachineModalItem(
                  icon: Assets.images.description,
                  title: AppLocalizations.of(context).descriptionOfPromotion,
                  titleInBold: true,
                  description: vendingMachine.descriptionPromotion,
                  moveDescriptionToNextLine: true,
                ),
                VendingMachineModalItem(
                  icon: Assets.images.card,
                  title: AppLocalizations.of(context).description,
                  titleInBold: true,
                  description: vendingMachine.description,
                  moveDescriptionToNextLine: true,
                ),
              ],
            ),
          ),
        ),
      );

  Widget _buildSelectButton(BuildContext context) => Padding(
        padding: const EdgeInsets.only(right: 16, left: 16),
        child: BaseButton(
          height: 40,
          text: AppLocalizations.of(context).select,
          onPressed: rentPressed,
        ),
      );
}
