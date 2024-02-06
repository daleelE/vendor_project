






import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure(this.message);

  @override
  List<Object> get props => [message];
}

class AuthFailure extends Failure{
  final FirebaseAuthException exception;
  const AuthFailure(super.message,{ required this.exception});
}

class ServerFailure extends Failure{
  const ServerFailure(super.message);
}

class LocalDBFailure extends Failure{
  const LocalDBFailure(super.message);
}

class CachedFailure extends Failure{
  const CachedFailure(super.message);

}

class FirebaseFailure extends Failure{
  const FirebaseFailure(super.message);
}

class OfflineFailure extends Failure{
  const OfflineFailure(super.message);
}

class EmptyCachedFailure extends Failure{
  const EmptyCachedFailure(super.message);
}

class EmptyReceiverTokensFailure extends Failure{
  const EmptyReceiverTokensFailure(super.message);
}

class AppFailure extends Failure{
  const AppFailure(super.message);
}