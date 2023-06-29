import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_styles/main.dart';
import 'package:todo_styles/styles/app_color.dart';
import 'package:todo_styles/todo_create.dart';
import 'package:todo_styles/todo_item.dart';
import 'package:todo_styles/todo_model.dart';
import 'package:todo_styles/todo_repo.dart';

import 'defaults.dart';

FutureProvider<List<TodoViewModel>> todoVmsProvider =
    FutureProvider((ref) async {
  final todos = await ref.watch(TodoRepository.provider).fetchTodoList();
  return todos.reversed
      .map(
        TodoViewModel.new,
      )
      .toList();
});

class TodoScreenController extends ChangeNotifier {
  TodoScreenController(this.ref);

  static ChangeNotifierProvider<TodoScreenController> provider =
      ChangeNotifierProvider((ref) => TodoScreenController(ref));

  ChangeNotifierProviderRef ref;

  void onCheckChanged(bool isChecked, TodoViewModel vm) {
    final repo = ref.read(TodoRepository.provider);
    final todo = vm.model.copyWith(isDone: isChecked);
    repo.updateTodo(todo);
    ref.invalidate(todoVmsProvider);
  }

  void onCreateTodoPressed(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const CreateTodo(),
    ));
  }
}

class TodoScreen extends ConsumerWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
            title: const Text('TODO List'),
            backgroundColor: AppColors.primaryColor,
            actions: [
              // Will be used to change the theme mode light/dark
              // CupertinoSwitch(
              //   activeColor: AppColors.selectedCardColor,
              //   trackColor: AppColors.black,
              //   value: ref.watch(themeModeProvider) == ThemeMode.light,
              //   onChanged: (value) => ref
              //       .read(themeModeProvider.notifier)
              //       .state = value ? ThemeMode.light : ThemeMode.dark,
              // )
            ]),
        body: ref.watch(todoVmsProvider).when(
              data: (data) => _dataContent(context, ref, data),
              error: (error, stackTrace) => errorBuilder(context),
              loading: () => loadingBuilder(context),
            ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.primaryColor,
          child: const Icon(Icons.add, color: Colors.white),
          onPressed: () => ref
              .read(TodoScreenController.provider)
              .onCreateTodoPressed(context),
        ),
      );

  Widget _dataContent(
      BuildContext context, WidgetRef ref, List<TodoViewModel> vms) {
    final controller = ref.watch(TodoScreenController.provider);
    return ListView.builder(
      padding: const EdgeInsets.only(top: 16),
      itemCount: vms.length,
      itemBuilder: (context, index) => TodoItem(
        viewModel: vms[index],
        onChanged: (isChecked) =>
            controller.onCheckChanged(isChecked ?? false, vms[index]),
      ),
    );
  }
}
