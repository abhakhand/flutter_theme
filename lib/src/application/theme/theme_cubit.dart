import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system);

  void toggleTheme(ThemeMode mode) {
    emit(mode);
  }

  @override
  ThemeMode fromJson(Map<String, dynamic> json) =>
      mapStringToThemeMode(json['themeMode'] as String);

  @override
  Map<String, dynamic> toJson(ThemeMode state) => <String, dynamic>{
        'themeMode': mapThemeModeToString(state),
      };
}

ThemeMode mapStringToThemeMode(String value) {
  if (value == 'light') {
    return ThemeMode.light;
  } else if (value == 'dark') {
    return ThemeMode.dark;
  } else {
    return ThemeMode.system;
  }
}

String mapThemeModeToString(ThemeMode mode) {
  if (mode == ThemeMode.light) {
    return 'light';
  } else if (mode == ThemeMode.dark) {
    return 'dark';
  } else {
    return 'system';
  }
}
