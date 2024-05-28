import '../../domain/entites/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel(
      {required super.uid,
      required super.email,
      required super.displayName,
      required super.phoneNumber,
      required super.photoUrl,
      required super.online,
      required super.type,
      required super.provider,
      required super.create,
      });

  factory UserModel.fromJson(Map<String, dynamic>? map) {
    return UserModel(
      uid: map!['id'],
      email: map['email'],
      displayName: map['name'],
      photoUrl: map['photo_url'],
      phoneNumber: map['phone_number'],
      online: map['online'],
      type: map['user_type'],
      provider: map['provider'],
      create: DateTime.fromMillisecondsSinceEpoch(map['create']),
    );
  }

  Map<String, dynamic> get toJson => {
        'id': uid,
        'email': email,
        'name': displayName,
        'photo_url': photoUrl,
        'phone_number': phoneNumber,
        'online': online,
        'user_type': type.name,
        'provider': provider.name,
        'create': create.millisecondsSinceEpoch,
      };
}
