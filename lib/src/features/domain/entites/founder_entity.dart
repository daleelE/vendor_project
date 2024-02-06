import 'package:equatable/equatable.dart';


class FounderEntity extends Equatable {
  final String id, founderName, address, state, city, commercialRegistrationNo;
  final DateTime create;

  const FounderEntity({
    required this.id,
    required this.founderName,
    required this.address,
    required this.state,
    required this.city,
    required this.commercialRegistrationNo,
    required this.create,
  });

  @override
  List<Object?> get props => [
    id,
    founderName,
    address,
    state,
    city,
    commercialRegistrationNo,
    create,
    ];


}
