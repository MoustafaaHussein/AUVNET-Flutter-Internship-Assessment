import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  Future deleteUser() async {
    await FirebaseAuth.instance.currentUser!.delete();
  }

  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final credential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    await sendEmailVerificationToUser(credential.user);
    return credential.user!;
  }

  Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    }
  }

  bool isSignedIn() {
    return FirebaseAuth.instance.currentUser != null;
  }

  Future<void> userSignOut() async {
    await FirebaseAuth.instance.signOut();
  }

  Future<bool> isEmailConfirmed({required String email}) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      // 🔄 Important: refresh user data
      if (user.emailVerified) {
        return true;
      } else {
        return false;
      }
    } else {
      log('user is verfied');
      return false;
    }
  }

  sendEmailVerificationToUser(User? user) {
    if (user != null && !user.emailVerified) {
      user
          .sendEmailVerification()
          .then((value) {
            log('Email verification sent to ${user.email}');
          })
          .catchError((error) {
            log('Failed to send email verification: $error');
          });
    } else {
      log('User is null or already verified');
    }
  }
}
