import 'package:flutter/material.dart';
class InputFields extends StatefulWidget {
  final String? hintText;
  final TextInputType? keyBoardLayout;
  const InputFields({this.hintText, this.keyBoardLayout, super.key});

  @override
  State<InputFields> createState() => _InputFieldsState();
}

class _InputFieldsState extends State<InputFields> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.keyBoardLayout ?? TextInputType.text,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          color: Color.fromRGBO(130, 130, 130, 0.4),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color.fromRGBO(0, 0, 0, 0.4)),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color.fromRGBO(0, 0, 0, 0.4)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
