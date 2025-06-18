import 'package:auvnet_ecommerce/core/helpers/images.dart';
import 'package:auvnet_ecommerce/features/home/presentation/views/widgets/custom_dot_inditcaior.dart';
import 'package:auvnet_ecommerce/features/home/presentation/views/widgets/offers_page_view_items.dart';
import 'package:flutter/material.dart';

class OffersPageView extends StatefulWidget {
  OffersPageView({super.key});
  final PageController pageController = PageController();

  @override
  State<OffersPageView> createState() => _OffersPageViewState();
}

class _OffersPageViewState extends State<OffersPageView> {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();

    widget.pageController.addListener(() {
      setState(() {
        currentIndex = widget.pageController.page!.toInt();
      });
    });
  }

  @override
  void dispose() {
    widget.pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 300,
          child: PageView.builder(
            controller: widget.pageController,
            itemCount: 5,
            itemBuilder: (context, index) {
              return OffersPageViewItems(
                image: Assets.assetsImagesOffersImages,
              );
            },
          ),
        ),
        const SizedBox(height: 16),
        CustomDotIndicator(controller: widget.pageController, itemCount: 5),
      ],
    );
  }
}
