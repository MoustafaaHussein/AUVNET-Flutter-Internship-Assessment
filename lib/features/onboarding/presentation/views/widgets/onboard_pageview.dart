import 'package:auvnet_ecommerce/features/onboarding/presentation/views/widgets/onboard_pageview_items.dart';
import 'package:flutter/material.dart';

class OnboardPageview extends StatelessWidget {
  const OnboardPageview({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      physics: const BouncingScrollPhysics(),
      children: [
        OnBoardPageViewItems(
          titileText: 'all-in-one delivery ',
          subtitleText:
              'Order groceries, medicines, and meals delivered straight to your door',
        ),
        OnBoardPageViewItems(
          titileText: 'User-to-User Delivery',
          subtitleText:
              'Send or receive items from other users quickly and easily',
        ),
        OnBoardPageViewItems(
          titileText: 'Sales & Discounts',
          subtitleText: 'Discover exclusive sales and deals every day',
        ),
      ],
    );
  }
}
