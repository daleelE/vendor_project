import 'package:dartz/dartz.dart';
import '../../../../exports.dart';
import '../use_cases/auth/sign_up_email_password_use_case.dart';

abstract class BaseAuthRepository {
  Future<Either<Failure, void>> signUpWithEmailAndPassword(
      SignUpEmailParam param);
}
