import 'package:auvnet_ecommerce/features/authentication/presentation/views/widgets/login_bloc_consumer.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LoginBlocConsumer());
  }
}
