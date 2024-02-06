import '../../domain/entites/vendor_entity.dart';

class VendorModel extends VendorEntity {
  const VendorModel({
    required super.id,
    required super.vendorName,
    required super.address,
    required super.state,
    required super.city,
    required super.commercialRegistrationNo,
    required super.create,
  });

  factory VendorModel.fromJson(Map<String, dynamic>? map) => VendorModel(
        id: map!['id'],
        vendorName: map['vendor_name'],
        address: map['address'],
        state: map['state'],
        city: map['city'],
        commercialRegistrationNo: map['commercial_registration_no'],
        create: map['create'],
      );

  Map<String, dynamic> get toJson => {
        'id': id,
        'vendor_name': vendorName,
        'state': state,
        'city': city,
        'address': address,
        'commercial_registration_no': commercialRegistrationNo,
        'create': create.millisecondsSinceEpoch,
      };
}
