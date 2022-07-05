import 'package:flutter/material.dart';
import 'package:power_bank/app/resources/app_colors.dart';

import '../texts/underlined_text.dart';

class ContactItem extends StatelessWidget {
  ContactItem({
    Key? key,
    required this.title,
    required this.values,
    this.needUnderLine = true,
    this.onItemClicked,
  }) : super(key: key);

  String title;
  final List<String> values;
  final bool needUnderLine;
  final Function(String phone)? onItemClicked;

  @override
  Widget build(BuildContext context) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(),
          Expanded(child: _buildValues()),
        ],
      );

  Widget _buildTitle() => SizedBox(
        width: 100,
        child: Text(
          title,
          style: TextStyle().copyWith(
            fontSize: 17,
            color: AppColors.onSurface1,
            fontWeight: FontWeight.bold,
          ),
        ),
      );

  Widget _buildValues() => ListView.separated(
        shrinkWrap: true,
        itemCount: values.length,
        itemBuilder: (context, index) => _buildValueItem(values[index]),
        separatorBuilder: (context, index) => const SizedBox(height: 13),
      );

  Widget _buildValueItem(String value) => needUnderLine
      ? Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            UnderlinedText(
              value,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: AppColors.onBackground13,
              ),
              onPressed: () {
                onItemClicked?.call(value);
              },
            ),
          ],
        )
      : Text(
          value,
          maxLines: 5,
          textAlign: TextAlign.left,
          // overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color: AppColors.onSurface1,
          ),
        );
}
