import 'dart:developer';

import 'package:auvnet_ecommerce/core/helpers/snackBar.dart';
import 'package:auvnet_ecommerce/core/routing/app_router.dart';
import 'package:auvnet_ecommerce/features/authentication/presentation/manger/bloc/auth_bloc.dart';
import 'package:auvnet_ecommerce/features/authentication/presentation/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginBlocConsumer extends StatelessWidget {
  const LoginBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is LoginLoading) {
        } else if (state is LoginSuccess) {
          log('success');
          GoRouter.of(context).pushNamed(AppRouter.kHomeView);
        } else if (state is LoginFailure) {
          showStatusMessage(context, state.error);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is LoginLoading ? true : false,
          child: LoginViewBody(),
        );
      },
    );
  }
}
