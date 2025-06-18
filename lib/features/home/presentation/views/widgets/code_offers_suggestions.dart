import 'package:auvnet_ecommerce/core/helpers/images.dart';
import 'package:flutter/material.dart';

class CodeSuggestions extends StatelessWidget {
  const CodeSuggestions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 4,
            offset: Offset(2, 2),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 4,
            offset: Offset(-2, -2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              Assets.assetsImagesSecurityVault,
              fit: BoxFit.cover,
              width: 80,
              height: 80,
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Get a code',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 4),

                Text(
                  'Add your code and save on your\norder',
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: 128),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),

            // Add your code suggestions here
          ],
        ),
      ),
    );
  }
}
