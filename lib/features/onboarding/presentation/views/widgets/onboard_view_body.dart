import 'package:auvnet_ecommerce/core/helpers/images.dart';
import 'package:auvnet_ecommerce/core/routing/app_router.dart';
import 'package:auvnet_ecommerce/features/onboarding/presentation/views/widgets/custom_button.dart';
import 'package:auvnet_ecommerce/features/onboarding/presentation/views/widgets/onboard_pageview.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardViewBody extends StatefulWidget {
  const OnboardViewBody({super.key});

  @override
  State<OnboardViewBody> createState() => _OnboardViewBodyState();
}

class _OnboardViewBodyState extends State<OnboardViewBody> {
  late PageController pageController;
  var currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Image.asset(
            Assets.assetsImagesColoredBackground,
            fit: BoxFit.fill,
            width: 300,
            height: 400,
          ),
        ),
        Positioned(
          top: 200,
          left: 40,
          child: Container(
            width: 336,
            height: 336,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.assetsImagesNawelSplashIcon),
                fit: BoxFit.cover,
              ),
              shape: OvalBorder(),
            ),
          ),
        ),

        Expanded(child: OnboardPageview(pageController: pageController)),
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            Assets.assetsImagesColoredBackground2,
            fit: BoxFit.fill,
            width: 300,
            height: 400,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: CustomButton(
                onpressed: () {
                  GoRouter.of(context).pushReplacement(AppRouter.kLoginView);
                },
                text: 'Get Started',
                buttonColor: const Color(0xFF8900FE),
              ),
            ),
            const SizedBox(height: 16),
            Visibility(
              visible: currentPage < 2,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                onPressed: () {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: const Text('Next', style: TextStyle(color: Colors.grey)),
              ),
            ),
            SizedBox(height: 32),
          ],
        ),
      ],
    );
  }
}
