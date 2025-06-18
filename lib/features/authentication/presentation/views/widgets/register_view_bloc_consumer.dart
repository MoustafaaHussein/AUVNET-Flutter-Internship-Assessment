import 'package:auvnet_ecommerce/core/helpers/snackBar.dart';
import 'package:auvnet_ecommerce/core/routing/app_router.dart';
import 'package:auvnet_ecommerce/features/authentication/presentation/manger/bloc/auth_bloc.dart';
import 'package:auvnet_ecommerce/features/authentication/presentation/views/widgets/register_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegisterBlocConsumer extends StatelessWidget {
  const RegisterBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is RegisterLoading) {
        } else if (state is RegisterSuccess) {
          showStatusMessage(context, 'Account Created Successfully');
          GoRouter.of(context).push(AppRouter.kLoginView);
        } else if (state is RegisterFailure) {
          showStatusMessage(context, state.error);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is RegisterLoading ? true : false,
          child: RegisterViewBody(),
        );
      },
    );
  }
}
