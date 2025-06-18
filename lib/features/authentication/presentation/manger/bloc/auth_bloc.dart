import 'package:auvnet_ecommerce/features/authentication/domain/entities/user_entity.dart';
import 'package:auvnet_ecommerce/features/authentication/domain/use_cases/login_with_email_and_password_usecase.dart';
import 'package:auvnet_ecommerce/features/authentication/domain/use_cases/register_with_email_and_password_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginWithEmailAndPasswordUseCase loginWithEmailAndPasswordUseCase;
  final RegisterWithEmailAndPasswordUseCase registerWithEmailAndPasswordUseCase;

  AuthBloc(
    this.loginWithEmailAndPasswordUseCase,
    this.registerWithEmailAndPasswordUseCase,
  ) : super(AuthInitial()) {
    on<LoginEvent>(_onLogin);
    on<RegisterEvent>(_onRegister);
  }

  Future<void> _onLogin(LoginEvent event, Emitter<AuthState> emit) async {
    emit(LoginLoading());

    // Replace 'authRepo' with the appropriate repository or use case
    final result = await loginWithEmailAndPasswordUseCase(
      event.email,
      event.password,
    );

    result.fold(
      (failure) => emit(LoginFailure(failure.errorMessage)),
      (user) => emit(LoginSuccess(user)),
    );
  }

  Future<void> _onRegister(RegisterEvent event, Emitter<AuthState> emit) async {
    emit(RegisterLoading());

    // Replace 'authRepo' with the appropriate repository or use case
    final result = await registerWithEmailAndPasswordUseCase(
      event.email,
      event.password,
    );

    result.fold(
      (failure) => emit(RegisterFailure(failure.errorMessage)),
      (user) => emit(RegisterSuccess(user)),
    );
  }
}
