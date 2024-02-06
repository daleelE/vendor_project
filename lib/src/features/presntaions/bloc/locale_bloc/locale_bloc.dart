import 'package:get/get.dart';
import '../../../../../exports.dart';
import '../../../../core/helpers/language_cache_helper.dart';

part 'locale_event.dart';
part 'locale_state.dart';

class LocaleBloc extends Bloc<LocaleEvent, Locale> {
  LocaleBloc() : super(const Locale('en')) {
    on<LocaleEvent>((event, emit) {});
    on<Checklocale>((event, emit) async {
      final langCode = await LanguageCacheHelper.getCachedLanguageCode();
      emit(Locale(langCode));
    });
    on<LocaleChanged>((event, emit) async {
      await LanguageCacheHelper.cacheLanguageCode(event.locale.languageCode);
      await Future.delayed(const Duration(milliseconds: 500));
      Get.updateLocale(event.locale);
      emit(event.locale);
    });
  }
}
