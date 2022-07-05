import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../resources/app_colors.dart';

class BaseInput extends StatefulWidget {
  const BaseInput({
    Key? key,
    this.text,
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
    this.contentPadding =
        const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
  }) : super(key: key);

  final String? text;
  final String? hint;
  final String? error;
  final ValueChanged<String>? onChanged;
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
  State<BaseInput> createState() => _BaseInputState();
}

class _BaseInputState extends State<BaseInput> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController(text: widget.text);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  final InputBorder _border = const OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.inputBorder,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(8),
    ),
  );

  @override
  Widget build(BuildContext context) => TextField(
    controller: widget.controller,
        textAlign: widget.textAlign,
        maxLength: widget.maxLength,
        maxLines: widget.maxLines,
        minLines: widget.minLines,
        keyboardType: widget.keyboardType,
        onChanged: widget.onChanged,
        style: widget.textStyle,
        inputFormatters: widget.inputFormatters,
        decoration: InputDecoration(
          counterText: widget.needCounter ? null : '',
          contentPadding: widget.contentPadding,
          hintText: widget.hint,
          hintStyle: widget.hintStyle,
          filled: true,
          fillColor: AppColors.inputBackground,
          // hoverColor: AppColors.inputHint,
          enabledBorder: _border,
          focusedBorder: _border,
        ),
      );
}
