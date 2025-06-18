import 'package:auvnet_ecommerce/core/errors/failure.dart';
import 'package:auvnet_ecommerce/core/services/firebase_auth_service.dart';
import 'package:auvnet_ecommerce/features/authentication/domain/entities/user_entity.dart';
import 'package:auvnet_ecommerce/features/authentication/domain/repos/auth_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImpl implements AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});

  @override
  Future<Either<Failure, UserEntity>> loginWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    User? user;
    try {
      // Step 1: Sign in the user
      user = await firebaseAuthService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Step 2: Refresh the user info
      await user.reload();

      // Step 3: Check if email is verified
      if (!user.emailVerified) {
        await FirebaseAuth.instance.signOut(); // Sign out unverified users
        return left(
          ServiceFailure(
            errorMessage: 'Please confirm your email before signing in.',
          ),
        );
      }

      // Step 4: Proceed with the login
      var userEntity = UserEntity(email: email, id: user.uid);

      return right(userEntity);
    } on FirebaseAuthException catch (e) {
      return left(ServiceFailure.fromFirebaseAuth(e));
    } catch (_) {
      return left(ServiceFailure(errorMessage: 'unknown-error'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> registerWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      var usersEntity = UserEntity(email: email, id: user.uid);

      return right(usersEntity);
    } on Exception catch (e) {
      if (e is FirebaseAuthException) {
        return left(ServiceFailure.fromFirebaseAuth(e));
      } else {
        return left(ServiceFailure(errorMessage: 'unknown-error'));
      }
    }
  }
}
