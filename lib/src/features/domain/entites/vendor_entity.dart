import 'package:equatable/equatable.dart';


class VendorEntity extends Equatable {
  final String id, vendorName, address, state, city, commercialRegistrationNo;
  final DateTime create;

  const VendorEntity({
    required this.id,
    required this.vendorName,
    required this.address,
    required this.state,
    required this.city,
    required this.commercialRegistrationNo,
    required this.create,
  });

  @override
  List<Object?> get props => [
    id,
    vendorName,
    address,
    state,
    city,
    commercialRegistrationNo,
    create,
    ];


}
