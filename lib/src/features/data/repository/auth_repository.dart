import 'package:firebase_auth/firebase_auth.dart';
import '../../../core/helpers/network_info.dart';

import '../../../core/error/failures.dart';
import 'package:dartz/dartz.dart';

import '../../domain/base_repo/base_auth_repository.dart';
import '../../domain/use_cases/auth/sign_up_email_password_use_case.dart';
import '../source/auth/auth_remote_source.dart';

class AuthRepository extends BaseAuthRepository {
  final InternetCheck _internet;
  final BaseAuthRemoteSource _remoteSource;

  AuthRepository(this._remoteSource, this._internet);

  @override
  Future<Either<Failure, UserCredential>> signUpWithEmailAndPassword(
      SignUpEmailParam param) async {
    if (await _internet.isConnected) {
      try {
        final result = await _remoteSource.signUpWithEmailAndPassword(param);
        return Right(result);
      } on ServerFailure catch (failure){
        return Left(ServerFailure(failure.message)); 
      } catch (failure) {
        return Left(ServerFailure(failure.toString()));
      }
    } else {
      return const Left(OfflineFailure('ErrorTxt.offlineInternet'));
    }
  }
}
