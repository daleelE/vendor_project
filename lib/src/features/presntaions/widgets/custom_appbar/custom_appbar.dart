import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../../../exports.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    this.leadingPress,
    this.title,
    this.iconLeading,
    this.widgetTitle,
    this.customTitle,
    this.elevation,
    this.background,
    this.actions,
    this.leadingColor,
    this.customLeading,
    this.titleColor,
    this.centerTitle = false,
    this.bottom,
    this.flexibleSpace,
    this.height = 70,
    this.isLeading = false,
    this.statusBarColor,
    this.brightness,
  });
  final String? title;
  final String? iconLeading;
  final Widget? widgetTitle;
  final Widget? customTitle;
  final Color? leadingColor;
  final Color? background;
  final Color? statusBarColor;
  final Color? titleColor;
  final Function? leadingPress;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  final bool centerTitle;
  final double? elevation;
  final Widget? customLeading;
  final Widget? flexibleSpace;
  final double height;
  final Brightness? brightness;
  final bool isLeading;

  @override
  Widget build(BuildContext context) {
    return DeviceBuilder(builder: (context, deviceInfo) {
      return AppBar(
        toolbarHeight: height.rH,
        automaticallyImplyLeading: isLeading,
        backgroundColor: background ?? context.colorScheme.surface,
        surfaceTintColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: statusBarColor ?? Colors.transparent,
          statusBarIconBrightness: brightness ??
              (deviceInfo.isDark ? Brightness.light : Brightness.dark),
          statusBarBrightness: brightness ??
              (deviceInfo.isDark ? Brightness.light : Brightness.dark),
        ),
        shadowColor: Colors.black.withOpacity(.4),
        centerTitle: centerTitle,
        titleSpacing: 0,
        elevation: elevation ?? 0,
        scrolledUnderElevation: 0,
        // leading: isLeading ? leadingIcon ?? LeadingAppbarDir(
        //   color: leadingColor ?? Colors.black54,
        //   size: 14,
        //   press: (){
        //     leadingPress();
        //   }, local: getLocal(), os: getOS(),
        // ) : null,
        title: customTitle ??
            Container(
              margin: kEdgePadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (!centerTitle)
                    Row(
                      children: [
                        if (customLeading != null) customLeading!,
                        if (customLeading == null) buildIconLeading,
                        horzintalSpacing(2),
                        widgetTitle ?? titleAppbar(context),
                      ],
                    ),
                  if (centerTitle)
                    if (customLeading != null) customLeading!,
                  if (centerTitle)
                    if (customLeading == null) buildIconLeading,
                  if (centerTitle) titleAppbar(context),
                  if (actions != null)
                    Row(
                      children: actions!,
                    ),
                  if (actions == null) horzintalSpacing(24)
                ],
              ),
            ),
        flexibleSpace: flexibleSpace,
        bottom: bottom,
      );
    });
  }

  LeadingWidget get buildIconLeading {
    return LeadingWidget(
      icon: iconLeading,
      size: 20,
      press: () {
        leadingPress!();
      },
    );
  }

  Widget titleAppbar(BuildContext context) {
    return DeviceBuilder(builder: (context, dInfo) {
      return TextBodyMedium(
        title!.capitalize!,
        weight: FontWeight.bold,
      );
    });
  }

  @override
  Size get preferredSize => Size(double.maxFinite, height.rH);
}

