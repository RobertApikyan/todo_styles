import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'app_theme_extensions.tailor.dart';

@TailorMixin()
class AppThemeExtensions extends ThemeExtension<AppThemeExtensions>
    with _$AppThemeExtensionsTailorMixin {

  @override
  Color listItemBackgroundColor;
  @override
  Color listItemSelectedBackgroundColor;
  @override
  TextStyle listItemTitleTextStyle;

  AppThemeExtensions({
    required this.listItemBackgroundColor,
    required this.listItemSelectedBackgroundColor,
    required this.listItemTitleTextStyle,
  });
}
