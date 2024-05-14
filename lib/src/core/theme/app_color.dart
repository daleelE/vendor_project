
import '../../../exports.dart';

class AppColor {
  static Color primary = const Color(0xffebc4c5);
  static Color secondary = const Color(0xff9f9498);
}

Color getThemeColorForm(BuildContext context,{int percent = 10}) {
  bool islight = context.read<ThemeBloc>().state == ThemeMode.light;
  return islight
      ? context.colorScheme.surface.darken(percent)
      : context.colorScheme.surface.lighten(percent);
}

Color getPrimaryThemeColor(BuildContext context) {
  bool islight = context.read<ThemeBloc>().state == ThemeMode.light;
  return islight
      ? context.colorScheme.primary.darken(10)
      : context.colorScheme.primary.lighten(10);
}
