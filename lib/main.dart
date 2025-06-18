import 'package:auvnet_ecommerce/core/helpers/service_locator.dart';
import 'package:auvnet_ecommerce/core/routing/app_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  setupServiceLocator();
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
