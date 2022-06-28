import 'package:flutter/material.dart';

import '../utils/gymmy_colors.dart';
import 'gymmy_text.dart';

class GymmyElevatedButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;

  const GymmyElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: const ShapeDecoration(
        gradient: GymmyColors.primaryGradient,
        shape: StadiumBorder(),
      ),
      child: MaterialButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: const StadiumBorder(),
        onPressed: onPressed,
        child: GymmyText.button(text),
      ),
    );
  }
}
