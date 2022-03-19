import 'package:flutter/material.dart';
import 'package:flutter_theme/src/presentation/core/colors.dart';
import 'package:flutter_theme/src/presentation/core/constants.dart';
import 'package:flutter_theme/src/presentation/core/typography.dart';

class AppThemes {
  AppThemes._();

  /// Light Theme
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryColor,
    ),
    fontFamily: Constants.fontFamily,
    appBarTheme: const AppBarTheme(
      titleTextStyle: AppTypography.appBarTitleTextStyle,
    ),
    textTheme: const TextTheme(
      bodyLarge: AppTypography.largeBodyTextStyle,
      bodyMedium: AppTypography.mediumBodyTextStyle,
      bodySmall: AppTypography.smallBodyTextStyle,
    ),
    tabBarTheme: const TabBarTheme(
      labelStyle: AppTypography.tabBarLabelTextStyle,
      unselectedLabelStyle: AppTypography.tabBarLabelUnselectedTextStyle,
    ),
  );

  /// Dark Theme
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryColor,
    ),
    fontFamily: Constants.fontFamily,
    appBarTheme: const AppBarTheme(
      titleTextStyle: AppTypography.appBarTitleTextStyle,
    ),
    textTheme: TextTheme(
      bodyLarge: AppTypography.largeBodyTextStyle.copyWith(
        color: AppColors.primaryDarkFontColor,
      ),
      bodyMedium: AppTypography.mediumBodyTextStyle.copyWith(
        color: AppColors.primaryDarkFontColor,
      ),
      bodySmall: AppTypography.smallBodyTextStyle.copyWith(
        color: AppColors.primaryDarkFontColor,
      ),
    ),
    tabBarTheme: TabBarTheme(
      labelStyle: AppTypography.tabBarLabelTextStyle,
      unselectedLabelStyle:
          AppTypography.tabBarLabelUnselectedTextStyle.copyWith(
        color: AppColors.secondaryDarkFontColor,
      ),
    ),
  );
}

extension ThemeDataX on ThemeData {
  bool get isDark => brightness == Brightness.dark;

  TextStyle get largeTitlePrimaryTextStyle => isDark
      ? AppTypography.largeTitleTextStyle.copyWith(
          color: AppColors.primaryDarkFontColor,
        )
      : AppTypography.largeTitleTextStyle;

  TextStyle get largeTitleSecondaryTextStyle => isDark
      ? AppTypography.largeTitleTextStyle.copyWith(
          color: AppColors.secondaryDarkFontColor,
        )
      : AppTypography.largeTitleTextStyle.copyWith(
          color: AppColors.secondaryLightFontColor,
        );

  TextStyle get largeTitleTertiaryTextStyle => isDark
      ? AppTypography.largeTitleTextStyle.copyWith(
          color: AppColors.tertiaryDarkFontColor,
        )
      : AppTypography.largeTitleTextStyle.copyWith(
          color: AppColors.tertiaryLightFontColor,
        );
  TextStyle get mediumTitlePrimaryTextStyle => isDark
      ? AppTypography.mediumTitleTextStyle.copyWith(
          color: AppColors.primaryDarkFontColor,
        )
      : AppTypography.mediumTitleTextStyle;

  TextStyle get mediumTitleSecondaryTextStyle => isDark
      ? AppTypography.mediumTitleTextStyle.copyWith(
          color: AppColors.secondaryDarkFontColor,
        )
      : AppTypography.mediumTitleTextStyle.copyWith(
          color: AppColors.secondaryLightFontColor,
        );

  TextStyle get mediumTitleTertiaryTextStyle => isDark
      ? AppTypography.mediumTitleTextStyle.copyWith(
          color: AppColors.tertiaryDarkFontColor,
        )
      : AppTypography.mediumTitleTextStyle.copyWith(
          color: AppColors.tertiaryLightFontColor,
        );
  TextStyle get smallTitlePrimaryTextStyle => isDark
      ? AppTypography.smallTitleTextStyle.copyWith(
          color: AppColors.primaryDarkFontColor,
        )
      : AppTypography.smallTitleTextStyle;

  TextStyle get smallTitleSecondaryTextStyle => isDark
      ? AppTypography.smallTitleTextStyle.copyWith(
          color: AppColors.secondaryDarkFontColor,
        )
      : AppTypography.smallTitleTextStyle.copyWith(
          color: AppColors.secondaryLightFontColor,
        );

  TextStyle get smallTitleTertiaryTextStyle => isDark
      ? AppTypography.smallTitleTextStyle.copyWith(
          color: AppColors.tertiaryDarkFontColor,
        )
      : AppTypography.smallTitleTextStyle.copyWith(
          color: AppColors.tertiaryLightFontColor,
        );
}
