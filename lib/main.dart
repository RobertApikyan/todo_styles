import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Will be used in the upcoming steps, with light and dark theme implementation
    // final themeMode = ref.watch(themeModeProvider);
    return const MaterialApp(
      home: TodoScreen(),
    );
  }
}
