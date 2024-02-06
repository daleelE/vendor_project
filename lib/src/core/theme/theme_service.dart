import 'package:google_fonts/google_fonts.dart';
import 'color_schemes.dart';

import '../../../exports.dart';

class ThemeService {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      useMaterial3: true,
      colorScheme: lightColorScheme,
      textTheme: GoogleFonts.lexendTextTheme(customTextTheme(context)));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      useMaterial3: true,
      colorScheme: darkColorScheme,
      textTheme: GoogleFonts.lexendTextTheme(customTextTheme(context)));
}

TextTheme customTextTheme(BuildContext context) => TextTheme(
      displayLarge: context.displayLarge!.copyWith(fontSize: 96.rF),
      displayMedium: context.displayMedium!.copyWith(fontSize: 60.rF),
      displaySmall: context.displayMedium!.copyWith(fontSize: 48.rF),
      titleLarge: context.titleLarge!.copyWith(fontSize: 20.rF),
      titleMedium: context.titleLarge!.copyWith(fontSize: 16.rF),
      titleSmall: context.titleLarge!.copyWith(fontSize: 14.rF),
      bodyLarge: context.bodyLarge!.copyWith(fontSize: 16.rF),
      bodyMedium: context.bodyMedium!.copyWith(fontSize: 14.rF),
      bodySmall: context.bodySmall!.copyWith(fontSize: 12.rF),
      labelLarge: context.bodyLarge!.copyWith(fontSize: 14.rF),
      labelMedium: context.bodyMedium!.copyWith(fontSize: 12.rF),
      labelSmall: context.bodySmall!.copyWith(fontSize: 10.rF),
    );
