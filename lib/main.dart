import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_styles/styles/app_color.dart';
import 'package:todo_styles/styles/app_theme_extensions.dart';
import 'package:todo_styles/todo_screen.dart';

void main() {
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

final themeModeProvider = StateProvider((ref) => ThemeMode.light);

class App extends ConsumerWidget {
  const App({super.key});

  // Will be used in the upcoming steps, with light and dark theme implementation
  // final themeMode = ref.watch(themeModeProvider);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: AppColors.blue,
          appBarTheme: AppBarTheme(
              backgroundColor: AppColors.blue,
              titleTextStyle:
                  TextStyle(fontSize: 18, color: AppColors.black[0])),
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
          ]),
      home: const TodoScreen(),
    );
  }
}


