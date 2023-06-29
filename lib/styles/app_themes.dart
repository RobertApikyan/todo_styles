import 'package:flutter/material.dart';
import 'package:todo_styles/styles/app_color.dart';
import 'package:todo_styles/styles/app_theme_extensions.dart';

class AppThemes {
  static light() => ThemeData(
          primaryColor: AppColors.blue,
          appBarTheme: const AppBarTheme(backgroundColor: AppColors.blue),
          scaffoldBackgroundColor: AppColors.neutral[0],
          checkboxTheme: CheckboxThemeData(
            checkColor: MaterialStateProperty.all(AppColors.black[0]),
            fillColor: MaterialStateProperty.all(AppColors.blue[80]),
          ),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: AppColors.blue),
          extensions: [
            AppThemeExtensions(
                listItemBackgroundColor: AppColors.black[0],
                listItemSelectedBackgroundColor: AppColors.blue[20],
                listItemTitleTextStyle: const TextStyle(
                    fontWeight: FontWeight.w700, color: AppColors.black))
          ]);

  static dark() => ThemeData(
          primaryColor: AppColors.blue,
          appBarTheme: AppBarTheme(backgroundColor: AppColors.blue[90]),
          scaffoldBackgroundColor: AppColors.black[90],
          checkboxTheme: CheckboxThemeData(
            checkColor: MaterialStateProperty.all(AppColors.black[0]),
            fillColor: MaterialStateProperty.all(AppColors.blue[70]),
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: AppColors.blue[100]),
          extensions: [
            AppThemeExtensions(
                listItemBackgroundColor: AppColors.black[80],
                listItemSelectedBackgroundColor: AppColors.blue[100],
                listItemTitleTextStyle: TextStyle(
                    fontWeight: FontWeight.w700, color: AppColors.black[0]))
          ]);
}
