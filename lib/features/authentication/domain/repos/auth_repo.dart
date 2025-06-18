import 'package:auvnet_ecommerce/core/errors/failure.dart';
import 'package:auvnet_ecommerce/features/authentication/domain/entities/user_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> loginWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<Either<Failure, UserEntity>> registerWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<UserEntity> getUserData({required String uId});
}
