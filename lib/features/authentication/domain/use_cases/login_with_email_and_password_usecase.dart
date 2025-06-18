import 'package:auvnet_ecommerce/core/errors/failure.dart';
import 'package:auvnet_ecommerce/features/authentication/domain/entities/user_entity.dart';
import 'package:auvnet_ecommerce/features/authentication/domain/repos/auth_repo.dart';
import 'package:auvnet_ecommerce/features/authentication/domain/use_cases/use_case.dart';
import 'package:dartz/dartz.dart';

class LoginWithEmailAndPasswordUseCase
    extends UseCase<UserEntity, String, String> {
  final AuthRepo authRepo;

  LoginWithEmailAndPasswordUseCase(this.authRepo);

  @override
  Future<Either<Failure, UserEntity>> call([
    String? email,
    String? password,
  ]) async {
    return await authRepo.loginWithEmailAndPassword(
      email: email!,
      password: password!,
    );
  }
}
