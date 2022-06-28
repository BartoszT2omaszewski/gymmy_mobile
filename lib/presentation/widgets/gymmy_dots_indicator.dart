import 'dart:math';

import 'package:flutter/material.dart';

class GymmyDotsIndicator extends AnimatedWidget {
  final PageController controller;
  final int itemCount;
  final ValueChanged<int> onPageSelected;
  final Color color;

  const GymmyDotsIndicator({
    Key? key,
    required this.controller,
    required this.itemCount,
    required this.onPageSelected,
    this.color = Colors.white,
  }) : super(key: key, listenable: controller);

  static const double _dotSize = 8;
  static const double _maxZoom = 1;
  static const double _dotSpacing = 25;

  Widget _buildDot(int index) {
    late double selectedness;
    if (!controller.hasClients) {
      selectedness =
          Curves.easeOut.transform(max(0.0, (1.0 - ((0) - index))).abs());
    } else {
      selectedness = Curves.easeOut.transform(max(0.0,
          1.0 - ((controller.page ?? controller.initialPage) - index).abs()));
    }
    final zoom = 1.0 + (_maxZoom - 1.0) * selectedness;

    return SizedBox(
      width: _dotSpacing,
      child: Center(
        child: Material(
          color: color,
          type: MaterialType.circle,
          child: SizedBox(
            width: _dotSize + zoom,
            height: _dotSize + zoom,
            child: InkWell(onTap: () => onPageSelected(index)),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(itemCount, _buildDot),
    );
  }
}
