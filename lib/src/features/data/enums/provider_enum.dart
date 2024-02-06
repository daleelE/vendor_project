enum ProviderEnum {
  emial('emial');

  final String provider;
  const ProviderEnum(this.provider);
}

extension UserTypeParsing on String {
    ProviderEnum get toUserEnum{
    switch(this){
      case 'emial':
        return ProviderEnum.emial;
      default:
        return ProviderEnum.emial;
    }
  }
}
