import 'package:auvnet_ecommerce/core/helpers/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomNavigationBar extends StatefulWidget {
  final int initialIndex;

  const CustomNavigationBar({super.key, this.initialIndex = 0});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
    final currentIndex = _getCurrentIndex(location);

    return Container(
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 20,
            offset: Offset(0, -2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: GNav(
        onTabChange: (index) {},
        selectedIndex: currentIndex,
        tabBackgroundColor: const Color(0xffEEEEEE),
        gap: 10,
        padding: const EdgeInsets.all(20),
        tabs: [
          GButton(
            iconActiveColor: AppColors.kButtonPrimaryColor,
            icon: currentIndex == 0 ? Icons.home_filled : Icons.home_outlined,
            text: 'Home',
            textColor: Colors.grey,
          ),
          GButton(
            iconActiveColor: Colors.transparent,
            icon:
                currentIndex == 1
                    ? Icons.window_rounded
                    : Icons.grid_view_outlined,
            text: 'Categories',
            textColor: AppColors.kButtonPrimaryColor,
          ),
          GButton(
            iconActiveColor: Colors.transparent,
            icon:
                currentIndex == 1
                    ? Icons.delivery_dining
                    : Icons.delivery_dining_outlined,
            text: 'Deliver',
            textColor: AppColors.kButtonPrimaryColor,
          ),
          GButton(
            iconActiveColor: Colors.transparent,
            icon:
                currentIndex == 2
                    ? Icons.shopping_cart
                    : Icons.shopping_cart_outlined,
            text: 'Cart',
            textColor: AppColors.kButtonPrimaryColor,
          ),
          GButton(
            iconActiveColor: Colors.transparent,
            icon: currentIndex == 3 ? Icons.person : Icons.person_outline,
            text: 'Profile ',
            textColor: AppColors.kButtonPrimaryColor,
          ),
        ],
      ),
    );
  }

  void _navigateToTab(int index) {
    switch (index) {
      case 0:
        break;
      case 1:
        break;
      case 2:
        break;
      case 3:
        break;
    }
  }

  int _getCurrentIndex(String location) {
    return 0; // default
  }
}
