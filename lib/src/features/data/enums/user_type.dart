enum UserType {
  vendor('vendor');

  final String user;
  const UserType(this.user);
}

extension UserTypeParsing on String {
    UserType get toUserEnum{
    switch(this){
      case 'vendor':
        return UserType.vendor;
      default:
        return UserType.vendor;
    }
  }
}
