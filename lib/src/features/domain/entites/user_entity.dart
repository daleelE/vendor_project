import 'package:equatable/equatable.dart';

import '../../data/enums/provider_enum.dart';
import '../../data/enums/user_type.dart';
import '../../data/models/user_model.dart';

class UserEntity extends Equatable {
  final String uid, email, displayName, photoUrl, phoneNumber;
  final bool online;
  final UserType type;
  final ProviderEnum provider;
  final DateTime create;

  const UserEntity({
    required this.uid,
    required this.email,
    required this.phoneNumber,
    required this.displayName,
    required this.photoUrl,
    required this.online,
    required this.type,
    required this.provider,
    required this.create,
  });

  @override
  List<Object?> get props => [
        uid,
        email,
        phoneNumber,
        photoUrl,
        displayName,
        online,
        type,
        provider,
        create,
      ];

  UserModel get toModel => UserModel(
        uid: uid,
        email: email,
        displayName: displayName,
        phoneNumber: phoneNumber,
        online: online,
        photoUrl: photoUrl,
        type: type,
        provider: provider,
        create: create,
      );
}
