part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class LoginLoading extends AuthState {}

final class LoginSuccess extends AuthState {
  final UserEntity user;
  LoginSuccess(this.user);
}

final class LoginFailure extends AuthState {
  final String error;
  LoginFailure(this.error);
}

final class RegisterLoading extends AuthState {}

final class RegisterSuccess extends AuthState {
  final UserEntity user;
  RegisterSuccess(this.user);
}

final class RegisterFailure extends AuthState {
  final String error;
  RegisterFailure(this.error);
}
