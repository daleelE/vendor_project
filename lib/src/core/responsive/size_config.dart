import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double defaultSize;
  static late double statusBar;
  static late double bottomBar;
  static late Orientation orientation;
  static late double blockSizeHorizontal;
  static late double blockSizeVertical;
  static late double devicePixelRatio;
  static const double mobile = 600;
  static const double mobileBreakpoint = 400;
  static const double tablet = 900;
  static const double tabletBreakpoint = 600;
  static const double desktop = 1200;
  static const double desktopBreakpoint = 1000;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
    statusBar = _mediaQueryData.padding.top;
    bottomBar = _mediaQueryData.padding.bottom;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
    devicePixelRatio = _mediaQueryData.devicePixelRatio;
  }

}

double getResponsiveHeight(inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

double getResponsiveWidth(inputWidth) {
  double scale = getScaleFactor();
  double responsiveWidth = inputWidth * scale;
  double lowerLimit = inputWidth * 0.8;
  double upperLimit = inputWidth * 1.2;
  return responsiveWidth.clamp(lowerLimit, upperLimit);
}

double getScaleFactor() {
  double width = SizeConfig.screenWidth;
  if (width < SizeConfig.mobile) {
    return width / SizeConfig.mobileBreakpoint;
  } else if (width < SizeConfig.tablet) {
    return width / SizeConfig.tabletBreakpoint;
  } else {
    return width / SizeConfig.desktopBreakpoint;
  }
}


extension ResponsiveParsing on int {
  double get rW => getResponsiveWidth(this);
  double get rH => getResponsiveHeight(this);
  double get rF => getResponsiveWidth(this);
}
