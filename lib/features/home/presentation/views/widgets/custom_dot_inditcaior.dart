import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({
    super.key,
    required this.controller,
    required this.itemCount,
  });

  final PageController controller;
  final int itemCount;

  static const Color activeColor = Color(0xff8500F6);
  static const Color inactiveColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        double currentPage =
            controller.hasClients && controller.page != null
                ? controller.page!
                : controller.initialPage.toDouble();

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(itemCount, (index) {
            bool isActive = (index - currentPage).abs() < 0.5;

            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: isActive ? 16 : 8,
              height: 8,
              decoration: BoxDecoration(
                color: isActive ? activeColor : inactiveColor,
                borderRadius: BorderRadius.circular(4),
              ),
            );
          }),
        );
      },
    );
  }
}
