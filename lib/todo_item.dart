import 'package:flutter/material.dart';
import 'package:todo_styles/styles/app_theme_extensions.dart';
import 'package:todo_styles/todo_model.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({
    required this.viewModel,
    this.onChanged,
    super.key,
  });

  final TodoViewModel viewModel;
  final ValueChanged<bool?>? onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged?.call(!viewModel.model.isDone),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: viewModel.backgroundColor(context),
            borderRadius: const BorderRadius.all(Radius.circular(8))),
        child: Row(children: [
          Text(
            viewModel.name,
            style: context.listItemTitleTextStyle,
          ),
          const Spacer(),
          Checkbox(value: viewModel.model.isDone, onChanged: onChanged)
        ]),
      ),
    );
  }
}
