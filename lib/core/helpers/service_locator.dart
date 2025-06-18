import 'package:auvnet_ecommerce/core/services/firebase_auth_service.dart';
import 'package:auvnet_ecommerce/features/authentication/data/repos/auth_repo_impl.dart';
import 'package:auvnet_ecommerce/features/authentication/domain/repos/auth_repo.dart';
import 'package:auvnet_ecommerce/features/authentication/domain/use_cases/login_with_email_and_password_usecase.dart';
import 'package:auvnet_ecommerce/features/authentication/domain/use_cases/register_with_email_and_password_usecase.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(firebaseAuthService: getIt<FirebaseAuthService>()),
  );
  getIt.registerSingleton<LoginWithEmailAndPasswordUseCase>(
    LoginWithEmailAndPasswordUseCase(getIt<AuthRepo>()),
  );
  getIt.registerSingleton<RegisterWithEmailAndPasswordUseCase>(
    RegisterWithEmailAndPasswordUseCase(getIt<AuthRepo>()),
  );
}
