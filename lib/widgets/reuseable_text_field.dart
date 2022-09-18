import 'package:flutter/material.dart';

class ReuseableTextField extends StatelessWidget {
  final String textHint;
  final TextEditingController textEditingController;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  const ReuseableTextField({
    Key? key,
    required this.textHint,
    required this.textEditingController,
    required this.textInputType,
    required this.textInputAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: textHint,
      ),
      textInputAction: textInputAction,
      keyboardType: textInputType,
    );
  }
}
