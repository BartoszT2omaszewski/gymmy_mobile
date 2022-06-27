import 'package:flutter/material.dart';

import '../utils/gymmy_colors.dart';

class GymmyCircleButton extends StatelessWidget {
  // TODO: dodać obrazki jako arg i obsłużyć
  final VoidCallback? onPressed;

  const GymmyCircleButton({Key? key, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints(minHeight: 50, minWidth: 50),
      elevation: 2,
      fillColor: GymmyColors.white,
      // TODO:  padding?
      shape: const CircleBorder(),
      onPressed: onPressed,
    );
  }
}
