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
      child: Column(
        children: [
          Container(
            decoration: ShapeDecoration(
              color: Color(0xffFAE9E1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Image.asset(height: 80, image, fit: BoxFit.scaleDown),
            ),
          ),

          SizedBox(height: 8),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
