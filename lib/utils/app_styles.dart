import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(context) {
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: getResponsiveFontSize(context, baseFontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleMedium16(context) {
    return TextStyle(
      color: const Color(0xFF064061),
      fontSize: getResponsiveFontSize(context, baseFontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(context) {
    return TextStyle(
      color: const Color(0xFF064061),
      fontSize: getResponsiveFontSize(context, baseFontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold16(context) {
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: getResponsiveFontSize(context, baseFontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMedium20(context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, baseFontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold20(context) {
    return TextStyle(
      color: const Color(0xFF064061),
      fontSize: getResponsiveFontSize(context, baseFontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular12(context) {
    return TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context, baseFontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold24(context) {
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: getResponsiveFontSize(context, baseFontSize: 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context, baseFontSize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold18(context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, baseFontSize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
}

double getResponsiveFontSize(
  BuildContext context, {
  required baseFontSize,
}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = scaleFactor * baseFontSize;

  double lowerLimit = baseFontSize * .8;
  double upperLimit = baseFontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  // PlatformDispatcher dispatcher = PlatformDispatcher.instance;
  // double phisicalWidth = dispatcher.views.first.physicalSize.width;
  // double devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double screenWidth = phisicalWidth / devicePixelRatio;

  double screenWidth = MediaQuery.sizeOf(context).width;
  if (screenWidth < SizeConfig.tablet) {
    return screenWidth / 550;
  } else if (screenWidth < SizeConfig.desktop) {
    return screenWidth / 1000;
  } else {
    return screenWidth / 1920;
  }
}
