import 'package:auvnet_ecommerce/core/helpers/images.dart';
import 'package:flutter/material.dart';

class OffersPageViewItems extends StatelessWidget {
  const OffersPageViewItems({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        color: const Color(0xffFAE9E1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}

class OffersPageView extends StatelessWidget {
  const OffersPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: BouncingScrollPhysics(),
      controller: pageController,
      children: [
        OffersPageViewItems(image: Assets.assetsImagesOffersImages),
        OffersPageViewItems(image: Assets.assetsImagesOffersImages),
        OffersPageViewItems(image: Assets.assetsImagesOffersImages),
      ],
    );
  }
}
