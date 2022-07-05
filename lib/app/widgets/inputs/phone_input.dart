import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:power_bank/app/widgets/inputs/base_input.dart';
import 'package:power_bank/core/entities/phone_number.dart';
import 'package:power_bank/localization/app_localizations.dart';
import '../../resources/app_colors.dart';

class PhoneInput extends StatefulWidget {
  const PhoneInput({
    Key? key,
    this.text,
    this.phone,
    this.label,
    this.hint,
    this.error,
    this.onChanged,
    this.autoFocus = false,
    this.maxLength,
    this.inputFormatters,
    this.controller,
    this.keyboardType,
    this.autofillHints,
    this.needCounter = false,
    this.textAlign = TextAlign.center,
    this.maxLines = 1,
    this.minLines,
    this.textStyle,
    this.hintStyle,
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
  }) : super(key: key);

  final PhoneNumber? phone;
  final String? text;
  final String? label;
  final String? hint;
  final String? error;
  final ValueChanged<PhoneNumber>? onChanged;
  final bool autoFocus;
  final int? maxLength;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final Iterable<String>? autofillHints;
  final bool needCounter;
  final TextAlign textAlign;
  final int maxLines;
  final int? minLines;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final EdgeInsets contentPadding;

  @override
  State<PhoneInput> createState() => PhoneInputState();
}

class PhoneInputState extends State<PhoneInput> {
  MaskTextInputFormatter? _formatter;
  late TextEditingController _controller;

  void initState() {
    super.initState();
    String newText;
    if ((widget.phone?.formattedNumber ?? '').isEmpty) {
      newText = '+7';
    } else {
      newText = widget.phone!.formattedNumber;
    }
    _controller = TextEditingController(text: newText);
    _initFormatter();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  TextEditingController get controllerText => _controller;

  @override
  Widget build(BuildContext context) => BaseInput(
        controller: widget.controller,
        keyboardType: TextInputType.phone,
        textAlign: TextAlign.center,
        hint: AppLocalizations.of(context).phoneMask,
        onChanged: _onChanged,
        inputFormatters: [_formatter!],
      );

  Future<void> _initFormatter() async {
    _formatter = MaskTextInputFormatter(
      mask: '+7 (###) ###-##-##',
      filter: {"#": RegExp(r'[0-9]')},
    );
    // if (mounted) {
    //   setState(() {});
    // }
  }

  void _onChanged(String text) async {
    String phone = text.replaceAll(RegExp(r'[^0-9]'), '');
    PhoneNumber number = PhoneNumber(
      phoneNumber: phone,
      dialCode: '7',
      isoCode: 'ru',
      formattedNumber: text,
    );
    widget.onChanged?.call(number);
  }
}
