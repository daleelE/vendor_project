import 'package:get_it/get_it.dart';

import '../../features/presntaions/bloc/locale_bloc/locale_bloc.dart';
import '../../features/presntaions/bloc/theme_bloc/theme_bloc.dart';


Future<void> $initGetIt(GetIt sl) async {
  // if (environment == 'prod') {
  //! Features - notifications

  // Bloc
  sl.registerFactory(() => LocaleBloc());
  sl.registerFactory(() => ThemeBloc());


  // UseCases
  // start gymier use cases
  // sl.registerLazySingleton(() => GetCategoriesUseCase(sl()));




  // start Repository


  // start remote Data Sources


  // core
  // sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImp(sl()));
  // sl.registerLazySingleton<BaseStorageHelper>(() => StorageHelper(sl()));
  // sl.registerLazySingleton<BaseQrCodeHelper>(() => QrCodeHelper());
  // sl.registerLazySingleton<BaseLocationHelper>(() => LocationHelper());
  // sl.registerLazySingleton<ApiServices>(() => DioService());

  // External
  // FirebaseAuth auth = FirebaseAuth.instance;
  // FirebaseFirestore firestore = FirebaseFirestore.instance;
  // FirebaseStorage storage = FirebaseStorage.instance;
  // FirebaseService service = FirebaseService();
  // SharedPreferences sharedPref = await SharedPreferences.getInstance();
  // InternetConnectionChecker internetCheck = InternetConnectionChecker();
  // final client = http.Client();
  // sl.registerSingleton<FirebaseAuth>(auth);
  // sl.registerSingleton<FirebaseFirestore>(firestore);
  // sl.registerSingleton<FirebaseStorage>(storage);
  // sl.registerSingleton<FirebaseService>(service);
  // sl.registerSingleton<SharedPreferences>(sharedPref);
  // sl.registerSingleton(client);
  // sl.registerSingleton(internetCheck);
}
