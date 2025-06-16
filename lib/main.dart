import 'package:auvnet_ecommerce/core/routing/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AuvnetEcommerce());
}

class AuvnetEcommerce extends StatelessWidget {
  const AuvnetEcommerce({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: AppRouter.router);
  }
}
