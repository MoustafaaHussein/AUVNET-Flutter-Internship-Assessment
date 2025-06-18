import 'package:auvnet_ecommerce/core/helpers/app_colors.dart';
import 'package:auvnet_ecommerce/core/helpers/constants.dart';
import 'package:auvnet_ecommerce/core/helpers/images.dart';
import 'package:auvnet_ecommerce/core/routing/app_router.dart';
import 'package:auvnet_ecommerce/features/authentication/presentation/manger/bloc/auth_bloc.dart';
import 'package:auvnet_ecommerce/features/authentication/presentation/views/widgets/custom_password_field.dart';
import 'package:auvnet_ecommerce/features/authentication/presentation/views/widgets/custom_text_field.dart';
import 'package:auvnet_ecommerce/features/onboarding/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatelessWidget {
  LoginViewBody({super.key});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Image.asset(Assets.assetsImagesNawelSplashIcon),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextField(
                  onSaved: (value) {
                    email = value!;
                  },
                  hintText: 'mail',
                  prefixIcon: FontAwesomeIcons.envelope,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomPasswordField(
                  onSaved: (value) {
                    password = value!;
                  },
                ),
              ),
              SizedBox(height: 20),
              CustomButton(
                onpressed: () {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      // Handle login logic here
                      BlocProvider.of<AuthBloc>(
                        context,
                      ).add(LoginEvent(email: email, password: password));
                    }
                  });
                },
                text: 'Login',
                buttonColor: AppColors.kButtonPrimaryColor,
              ),
              SizedBox(height: 10),
              TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kRegisterView);
                },
                child: Text(
                  'Create An Account',
                  style: TextStyle(
                    color: Color(0xff1773EA),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
