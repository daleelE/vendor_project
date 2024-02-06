part of 'locale_bloc.dart';

abstract class LocalState extends Equatable {
  const LocalState();
  
  @override
  List<Object> get props => [];
}

class LocalInitial extends LocalState {}
