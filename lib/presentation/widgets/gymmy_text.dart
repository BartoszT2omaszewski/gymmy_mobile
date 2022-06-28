import 'package:flutter/material.dart';

class GymmyText extends StatelessWidget {
  final String text;

  const GymmyText(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }

  factory GymmyText.button(String text, {Key? key}) = _GymmyTextButton;
}

class _GymmyTextButton extends GymmyText {
  final String label;

  const _GymmyTextButton(this.label, {Key? key}) : super(label, key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headline6);
  }
}
