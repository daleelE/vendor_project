import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../features/presntaions/bloc/locale_bloc/locale_bloc.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;

  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}

extension MediaQueryExtension on BuildContext {
  Size get size => mediaQuery.size;
  double height(double value) => mediaQuery.size.height * value;

  double width(double value) => mediaQuery.size.width * value;
}

extension TextThemeExtension on BuildContext {
  TextStyle? get displayLarge => textTheme.displayLarge;

  TextStyle? get displayMedium => textTheme.displayMedium;

  TextStyle? get displaySmall => textTheme.displaySmall;

  TextStyle? get headlineLarge => textTheme.headlineLarge;

  TextStyle? get headlineMedium => textTheme.headlineMedium;

  TextStyle? get headlineSmall => textTheme.headlineSmall;

  TextStyle? get titleLarge => textTheme.titleLarge;

  TextStyle? get titleMedium => textTheme.titleMedium;

  TextStyle? get titleSmall => textTheme.titleSmall;

  TextStyle? get bodyLarge => textTheme.bodyLarge;

  TextStyle? get bodyMedium => textTheme.bodyMedium;

  TextStyle? get bodySmall => textTheme.bodySmall;

  TextStyle? get labelLarge => textTheme.labelLarge;

  TextStyle? get labelMedium => textTheme.labelMedium;

  TextStyle? get labelSmall => textTheme.labelSmall;
}

const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
const arabic = ['۰', '۱', '۲', '۳', '٤', '٥', '٦', '۷', '۸', '۹'];

extension NumbersExtension on String {
  String numTr(BuildContext context) {
    String source = this;
    const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    const arabic = ['۰', '۱', '۲', '۳', '٤', '۵', '٦', '۷', '۸', '۹'];
    if (!localeBloc(context).langApp) {
      for (int i = 0; i < english.length; i++) {
        source = source.replaceAll(english[i], arabic[i]);
      }
    }
    return source;
  }

  String toAr() {
    String source = this;
    for (int i = 0; i < english.length; i++) {
      source = source.replaceAll(english[i], arabic[i]);
    }
    return source;
  }

  String toEn() {
    for (int i = 0; i < english.length; i++) {
      replaceAll(arabic[i], english[i]);
    }
    return this;
  }
}

extension DateExtension on String {
  DateTime get toDate {
    return DateTime.fromMillisecondsSinceEpoch(int.parse(this));
  }

  DateTime get toDateTime {
    return DateTime.fromMillisecondsSinceEpoch(int.parse(this));
  }

  String get toTxtDate {
    final date = DateTime.fromMillisecondsSinceEpoch(int.parse(this));
    return DateFormat('EE dd, yyyy').format(date);
  }

  String toCustomDate(String schema) {
    final date = DateTime.fromMillisecondsSinceEpoch(int.parse(this));
    return DateFormat(schema).format(date);
  }

  String get toTxtDate2 {
    final date = DateTime.fromMillisecondsSinceEpoch(int.parse(this));
    return DateFormat('MMM dd, yyyy').format(date);
  }

  String get toTimeTxt {
    final date = DateTime.fromMillisecondsSinceEpoch(int.parse(this));
    return DateFormat('hh:mm a').format(date);
  }

  String get toDTString {
    final date = DateTime.fromMillisecondsSinceEpoch(int.parse(this));
    return DateFormat('EE dd, yyyy hh:mm a').format(date);
  }
}

extension ColorExtension on Color {
  /// Convert the color to a darken color based on the [percent]
  Color darken([int percent = 40]) {
    assert(1 <= percent && percent <= 100);
    final value = 1 - percent / 100;
    return Color.fromARGB(
      alpha,
      (red * value).round(),
      (green * value).round(),
      (blue * value).round(),
    );
  }

  Color lighten([int percent = 40]) {
    assert(1 <= percent && percent <= 100);
    final value = percent / 100;
    return Color.fromARGB(
      alpha,
      (red + ((255 - red) * value)).round(),
      (green + ((255 - green) * value)).round(),
      (blue + ((255 - blue) * value)).round(),
    );
  }

  Color avg(Color other) {
    final red = (this.red + other.red) ~/ 2;
    final green = (this.green + other.green) ~/ 2;
    final blue = (this.blue + other.blue) ~/ 2;
    final alpha = (this.alpha + other.alpha) ~/ 2;
    return Color.fromARGB(alpha, red, green, blue);
  }
}
