import 'package:auvnet_ecommerce/features/authentication/presentation/views/widgets/register_view_bloc_consumer.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: RegisterBlocConsumer());
  }
}
