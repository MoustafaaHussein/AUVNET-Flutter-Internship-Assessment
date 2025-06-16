import 'package:flutter/material.dart';

class WelcomeHeaderCard extends StatelessWidget {
  const WelcomeHeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF9B28E1), // Purple
            Color(0xFFFFC75F), // Yellow/Orange
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ), // Optional, to make rounded corners
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Delivering to',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Al Satwa, 81A Street',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Hi hepa! ',
                  style: TextStyle(
                    color: const Color(0xFFF9F9F9),
                    fontSize: 30,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.30,
                  ),
                ),
              ],
            ),
            CircleAvatar(
              radius: 45,
              child: Image.asset('assets/images/profile_avatar.png'),
            ),
          ],
        ),
      ),
    );
  }
}
