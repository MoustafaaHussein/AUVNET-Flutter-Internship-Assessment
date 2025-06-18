import 'package:auvnet_ecommerce/features/home/data/models/suggestions_model.dart';
import 'package:auvnet_ecommerce/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: HomeViewBody());
  }
}
// This file is part of the Auvnet E-commerce project.
// It contains the HomeView widget, which serves as the main view for the home screen of the application.
// The HomeView widget is a stateless widget that builds a Scaffold containing the HomeViewBody