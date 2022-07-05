import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:power_bank/app/widgets/inputs/base_input.dart';

class CodeInput extends StatefulWidget {
  const CodeInput({
    Key? key,
    this.code,
    this.onChanged,
    this.hint,
  }) : super(key: key);

  final String? code;
  final ValueChanged<String>? onChanged;
  final String? hint;

  @override
  State<CodeInput> createState() => _CodeInputState();
}

class _CodeInputState extends State<CodeInput> {


  late TextEditingController _controller;

  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.code ?? '');
  }

  @override
  Widget build(BuildContext context) => BaseInput(
    controller: _controller,
    onChanged: widget.onChanged,
    maxLength: 5,
    hint: widget.hint,
    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
    keyboardType: TextInputType.phone,
  );
}
