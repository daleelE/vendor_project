enum UserType {
  owner('owner'),
  vendor('vendor');

  final String user;
  const UserType(this.user);
}

extension UserTypeParsing on String {
  UserType get toUserEnum {
    switch (this) {
      case 'vendor':
        return UserType.vendor;
      case 'owner':
        return UserType.owner;
      default:
        return UserType.vendor;
    }
  }
}
