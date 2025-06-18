import 'package:firebase_auth/firebase_auth.dart';

abstract class Failure {
  final String errorMessage;

  Failure({required this.errorMessage});
}

class ServiceFailure extends Failure {
  ServiceFailure({required super.errorMessage});

  // factory ServiceFailure.fromDioError(DioException dioError) {
  //   switch (dioError.type) {
  //     case DioExceptionType.connectionTimeout:
  //       return ServiceFailure(errorMessage: 'Connection Timed out');

  //     case DioExceptionType.sendTimeout:
  //       return ServiceFailure(errorMessage: 'Send Time out');
  //     case DioExceptionType.receiveTimeout:
  //       return ServiceFailure(errorMessage: 'Receive Time out');
  //     case DioExceptionType.badCertificate:
  //       return ServiceFailure(errorMessage: 'oops there was an error');

  //     case DioExceptionType.badResponse:
  //       ServiceFailure.fromResponse(
  //         dioError.response!.statusCode!,
  //         dioError.response!,
  //       );
  //       throw UnimplementedError();
  //     case DioExceptionType.cancel:
  //       return ServiceFailure(errorMessage: 'Request cancelled');
  //     case DioExceptionType.connectionError:
  //       return ServiceFailure(errorMessage: 'Connection Error ');
  //     case DioExceptionType.unknown:
  //       if (dioError.message!.contains('SocketException')) {
  //         return ServiceFailure(errorMessage: 'No internet Connection');
  //       } else {
  //         return ServiceFailure(
  //           errorMessage: 'Unexpected Error, please try again later',
  //         );
  //       }
  //   }
  // }

  factory ServiceFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServiceFailure(errorMessage: response['error']['message']);
    } else if (statusCode == 500) {
      return ServiceFailure(errorMessage: 'Internal server error');
    } else {
      return ServiceFailure(errorMessage: 'Oops there was an error');
    }
  }
  factory ServiceFailure.fromFirebaseAuth(FirebaseAuthException e) {
    switch (e.code) {
      case 'wrong-password':
        return ServiceFailure(
          errorMessage: 'Wrong password, please try again.',
        );
      case 'user-not-found':
        return ServiceFailure(
          errorMessage: 'User not found. Please register or try again.',
        );
      case 'email-already-in-use':
        return ServiceFailure(
          errorMessage: 'This email is already in use. Try logging in instead.',
        );
      case 'invalid-email':
        return ServiceFailure(
          errorMessage: 'Invalid email. Please check and try again.',
        );
      case 'weak-password':
        return ServiceFailure(errorMessage: 'Password is too weak.');
      case 'too-many-requests':
        return ServiceFailure(
          errorMessage: 'Too many attempts. Please try again later.',
        );
      case 'network-request-failed':
        return ServiceFailure(
          errorMessage: 'Network error. Check your connection.',
        );
      case 'user-disabled':
        return ServiceFailure(errorMessage: 'Your account has been disabled.');
      case 'invalid-credential':
        return ServiceFailure(
          errorMessage:
              'Wrong Email or Password Please Double Check your email and passowrd',
        );
      case 'account-exists-with-different-credential':
        return ServiceFailure(
          errorMessage:
              'An account already exists with a different credential.',
        );
      case "provider-already-linked":
        return ServiceFailure(
          errorMessage: 'The provider has already been linked to the user.',
        );
      case "credential-already-in-use":
        return ServiceFailure(
          errorMessage:
              'The account corresponding to the credential already exists or  is already linked to a Firebase User.',
        );
      default:
        return ServiceFailure(
          errorMessage: 'An unknown authentication error occurred.',
        );
    }
  }
}
