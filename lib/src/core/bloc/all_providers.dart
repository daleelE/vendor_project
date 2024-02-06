
import '../../../exports.dart';
import '../../features/presntaions/bloc/locale_bloc/locale_bloc.dart';
import '../../features/presntaions/bloc/theme_bloc/theme_bloc.dart';

class BlocProviders {
  static get all => [
    BlocProvider(create: (_)=> locator<LocaleBloc>()),
    BlocProvider(create: (_)=> locator<ThemeBloc>()),
  ];
}
