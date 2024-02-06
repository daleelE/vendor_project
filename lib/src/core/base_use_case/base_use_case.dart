import 'package:dartz/dartz.dart';
import '../../../exports.dart';

abstract class BaseUseCase<T, Parameters>{
  Future<Either<Failure ,T>> call(Parameters param);
}

abstract class StreamBaseUseCase<T, Parameters>{
  Stream<T> call(Parameters param);
}





class NoParameters extends Equatable{
  const NoParameters();
  @override
  List<Object?> get props => [];
}