import 'package:flutter/material.dart';

class SuggestionsListViewItems extends StatelessWidget {
  const SuggestionsListViewItems({
    super.key,
    required this.image,
    required this.title,
  });

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 130, // Constrain total height
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: ShapeDecoration(
                color: const Color(0xffFAE9E1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Image.asset(
                  image,
                  height: 60, // Smaller to avoid overflow
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            const SizedBox(height: 8),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
