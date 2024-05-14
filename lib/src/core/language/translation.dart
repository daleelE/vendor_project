import 'package:get/get.dart';

import 'ar_translate.dart';
import 'en_translate.dart';


class Translation extends Translations {

  @override
  Map<String, Map<String, String>> get keys => {
    'en' : engTranslate,
    'ar' : arTranslate,
  };

}



