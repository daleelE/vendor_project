import 'dart:io';

import '../../../exports.dart';
import '../../features/presntaions/bloc/locale_bloc/locale_bloc.dart';
import '../../features/presntaions/bloc/theme_bloc/theme_bloc.dart';




class DeviceBuilder extends StatelessWidget {
  final Function(
    BuildContext context,
    DeviceInfo deviceInfo,
  ) builder;
  const DeviceBuilder({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      DeviceInfo deviceInfo = DeviceInfo.init(context, constrains);
      return builder(context, deviceInfo);
    });
  }
}



class DeviceInfo extends Equatable {
  final Orientation orientation;
  final String operatingSystem;
  final double localHeight;
  final double localWidth;
  final bool isDark;
  final bool isAr;
  final bool isIOS;

  const DeviceInfo({
    required this.orientation,
    required this.operatingSystem,
    required this.localHeight,
    required this.localWidth,
    required this.isDark,
    required this.isAr,
    required this.isIOS,
  });

  factory DeviceInfo.init(BuildContext context, BoxConstraints constrains) {
    SizeConfig().init(context);
    return DeviceInfo(
      orientation: SizeConfig.orientation,
      operatingSystem: Platform.operatingSystem,
      isIOS: Platform.isIOS,
      isDark: context.read<ThemeBloc>().state == ThemeMode.dark,
      isAr: context.read<LocaleBloc>().state == const Locale('ar'),
      localHeight: constrains.maxHeight,
      localWidth: constrains.maxWidth,
    );
  }

  @override
  List<Object?> get props => [
        orientation,
        operatingSystem,
        localHeight,
        localWidth,
        isAr,
        isDark,
        isIOS,
      ];
}