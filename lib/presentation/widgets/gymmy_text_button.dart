import 'package:flutter/material.dart';
import 'package:gymmy_mobile/presentation/utils/gymmy_colors.dart';

class GymmyTextButton extends StatelessWidget {
  final String simpleText;
  final String boldText;
  final Function() onPressed;

  const GymmyTextButton({
    Key? key,
    required this.simpleText,
    required this.boldText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text.rich(
        TextSpan(
          text: simpleText,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          children: [
            TextSpan(
              text: boldText,
              style: const TextStyle(
                color: GymmyColors.red,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
