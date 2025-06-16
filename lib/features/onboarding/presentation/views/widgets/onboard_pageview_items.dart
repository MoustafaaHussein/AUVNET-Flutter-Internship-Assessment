import 'package:flutter/material.dart';

class OnBoardPageViewItems extends StatelessWidget {
  const OnBoardPageViewItems({
    super.key,
    required this.titileText,
    required this.subtitleText,
  });
  final String titileText, subtitleText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 300),
          Text(
            titileText,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xFF333333),
              fontSize: 28,

              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            subtitleText,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xE5677294),
              fontSize: 14,

              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
