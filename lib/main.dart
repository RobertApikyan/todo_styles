import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_styles/styles/app_themes.dart';
import 'package:todo_styles/todo_screen.dart';

void main() {
  runApp(
    ProviderScope(
      child: App(),
    ),
  );
}

final themeModeProvider = StateProvider((ref) => ThemeMode.light);

class App extends ConsumerWidget {
  App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);
    return MaterialApp(
      themeMode: themeMode,
      theme: AppThemes.light(),
      darkTheme: AppThemes.dark(),
      home: const TodoScreen(),
    );
  }
}
