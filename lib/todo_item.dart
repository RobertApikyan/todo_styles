import 'package:flutter/material.dart';
import 'package:todo_styles/styles/app_color.dart';
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
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => onChanged?.call(!viewModel.model.isDone),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: viewModel.backgroundColor,
              borderRadius: const BorderRadius.all(Radius.circular(8))),
          child: Row(children: [
            Text(
              viewModel.name,
              style: const TextStyle(fontWeight: FontWeight.w700),
            ),
            const Spacer(),
            Checkbox(
                activeColor: AppColors.blue[90],
                value: viewModel.model.isDone,
                onChanged: onChanged)
          ]),
        ),
      );
}
