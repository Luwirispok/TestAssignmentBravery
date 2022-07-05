import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:power_bank/app/resources/app_colors.dart';

class VendingMachineModalItem extends StatelessWidget {
  const VendingMachineModalItem({
    Key? key,
    this.padding = const EdgeInsets.only(left: 12, right: 9, bottom: 7),
    this.title = '',
    this.titleInBold = false,
    this.description = '',
    this.descriptionInBold = false,
    this.moveDescriptionToNextLine = false,
    required this.icon,
  }) : super(key: key);

  final EdgeInsets padding;
  final String title;
  final bool titleInBold;
  final String description;
  final bool descriptionInBold;
  final bool moveDescriptionToNextLine;
  final String icon;

  @override
  Widget build(BuildContext context) => Padding(
        padding: padding,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildIcon(),
            const SizedBox(width: 12),
            _buildBody(context),
          ],
        ),
      );

  Widget _buildIcon() => SvgPicture.asset(icon, width: 24, height: 24);

  Widget _buildBody(BuildContext context) => moveDescriptionToNextLine
      ? Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle().copyWith(
                color: AppColors.onSurface1,
                fontSize: 17,
                fontWeight: titleInBold ? FontWeight.w700 : FontWeight.w400,
                height: 22 / 17,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 90,
              child: Text(
                description,
                softWrap: true,
                style: TextStyle().copyWith(
                  color: AppColors.onSurface1,
                  fontSize: 17,
                  fontWeight: descriptionInBold ? FontWeight.w700 : FontWeight.w400,
                  height: 22 / 17,
                ),
              ),
            ),
          ],
        )
      : RichText(
          text: TextSpan(
            text: title,
            style: TextStyle().copyWith(
              fontSize: 17,
              color: AppColors.onSurface1,
              fontWeight: titleInBold ? FontWeight.w700 : FontWeight.w400,
              height: 22 / 17,
            ),
            children: [
              TextSpan(
                text: description,
                style: TextStyle().copyWith(
                  color: AppColors.onSurface1,
                  fontSize: 17,
                  fontWeight: descriptionInBold ? FontWeight.w700 : FontWeight.w400,
                  height: 22 / 17,
                ),
              ),
            ],
          ),
        );
}
