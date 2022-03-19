import 'package:flutter/material.dart';
import 'package:flutter_theme/src/presentation/core/colors.dart';
import 'package:flutter_theme/src/presentation/core/constants.dart';

class AppTypography {
  AppTypography._();

  //* Appbar title textstyle
  static const appBarTitleTextStyle = TextStyle(
    fontSize: Constants.appBarFontSize,
    fontWeight: FontWeight.bold,
    fontFamily: Constants.fontFamily,
  );

  //* Title textstyles
  static const largeTitleTextStyle = TextStyle(
    fontSize: Constants.largeTitleFontSize,
    color: AppColors.primaryLightFontColor,
  );

  static const mediumTitleTextStyle = TextStyle(
    fontSize: Constants.mediumTitleFontSize,
    color: AppColors.primaryLightFontColor,
  );

  static const smallTitleTextStyle = TextStyle(
    fontSize: Constants.smallTitleFontSize,
    color: AppColors.primaryLightFontColor,
  );

  //* Body textstyles
  static const largeBodyTextStyle = TextStyle(
    fontSize: Constants.largeBodyFontSize,
    color: AppColors.primaryLightFontColor,
  );

  static const mediumBodyTextStyle = TextStyle(
    fontSize: Constants.mediumBodyFontSize,
    color: AppColors.primaryLightFontColor,
  );

  static const smallBodyTextStyle = TextStyle(
    fontSize: Constants.smallBodyFontSize,
    color: AppColors.primaryLightFontColor,
  );

  //* Tab bar label textstyles
  static const tabBarLabelTextStyle = TextStyle(
    fontSize: Constants.largeBodyFontSize,
    fontWeight: FontWeight.bold,
    fontFamily: Constants.fontFamily,
    color: AppColors.primaryColor,
  );

  static const tabBarLabelUnselectedTextStyle = TextStyle(
    fontSize: Constants.largeBodyFontSize,
    fontWeight: FontWeight.bold,
    fontFamily: Constants.fontFamily,
    color: AppColors.secondaryLightFontColor,
  );
}
