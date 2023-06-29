import 'package:flutter/material.dart';
import 'package:todo_styles/styles/app_color.dart';
import 'package:todo_styles/styles/app_theme_extensions.dart';

class Todo {
  const Todo({
    required this.id,
    required this.name,
    required this.isDone,
  });

  final String id;
  final String name;
  final bool isDone;

  Todo copyWith({
    String? name,
    bool? isDone,
  }) {
    return Todo(
      id: id,
      name: name ?? this.name,
      isDone: isDone ?? this.isDone,
    );
  }
}

class TodoViewModel {
  TodoViewModel(this.model) : name = model.name;

  final Todo model;
  final String name;

  Color backgroundColor(BuildContext context) => model.isDone
      ? context.appThemeExtensions.listItemSelectedBackgroundColor
      : context.appThemeExtensions.listItemBackgroundColor;
}
