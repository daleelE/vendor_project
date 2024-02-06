import 'package:dartz/dartz.dart';

import '../../../../../exports.dart';
import '../../base_repo/base_auth_repository.dart';

class SignUpWithEmailUseCase extends BaseUseCase<void, SignUpEmailParam> {
  final BaseAuthRepository baseFirebaseRepository;

  SignUpWithEmailUseCase(this.baseFirebaseRepository);
  @override
  Future<Either<Failure, void>> call(SignUpEmailParam param) async {
    return await baseFirebaseRepository.signUpWithEmailAndPassword(param);
  }
}

class SignUpEmailParam extends Equatable {
  final String email;
  final String password;

  const SignUpEmailParam({required this.email, required this.password});

  @override
  List<Object> get props => [email, password];
}
