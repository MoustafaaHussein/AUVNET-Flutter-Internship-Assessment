import 'package:auvnet_ecommerce/core/helpers/app_images.dart';
import 'package:auvnet_ecommerce/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      GoRouter.of(context).pushReplacement(AppRouter.kOnBoardView);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Image.asset(Assets.assetsImagesNawelSplashIcon)],
    );
  }
}
