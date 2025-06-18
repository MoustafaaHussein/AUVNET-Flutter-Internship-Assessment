import 'package:flutter/material.dart';

class OffersPageViewItems extends StatelessWidget {
  const OffersPageViewItems({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Image.asset(image, fit: BoxFit.fill),
    );
  }
}
