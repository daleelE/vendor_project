import '../../domain/entites/founder_entity.dart';

class FounderModel extends FounderEntity {
  const FounderModel({required super.id, required super.founderName, required super.address, required super.state, required super.city, required super.commercialRegistrationNo, required super.create});
  
factory FounderModel.fromJson(Map<String, dynamic>? map) => FounderModel(
        id: map!['id'],
        founderName: map['founder_name'],
        address: map['address'],
        state: map['state'],
        city: map['city'],
        commercialRegistrationNo: map['commercial_registration_no'],
        create: map['create'],
      );

  Map<String, dynamic> get toJson => {
        'id': id,
        'founder_name': founderName,
        'state': state,
        'city': city,
        'address': address,
        'commercial_registration_no': commercialRegistrationNo,
        'create': create.millisecondsSinceEpoch,
      };
}