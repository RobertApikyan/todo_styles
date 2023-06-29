import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'todo_model.dart';

class TodoRepository {
  static Provider<TodoRepository> provider =
      Provider((ref) => TodoRepository());

  static final List<Todo> _todos = [
    Todo(id: _generateId(), name: 'Grocery shopping', isDone: false),
    Todo(id: _generateId(), name: 'Organize workspace', isDone: false),
    Todo(id: _generateId(), name: 'Meal planning', isDone: true),
  ];

  Future<List<Todo>> fetchTodoList() async {
    Future.delayed(const Duration(seconds: 2));
    return _todos;
  }

  Future<void> addTodo(String name) async {
    Future.delayed(const Duration(seconds: 2));
    _todos.add(Todo(id: _generateId(), name: name, isDone: false));
  }

  Future<void> updateTodo(Todo todo) async {
    Future.delayed(const Duration(seconds: 2));
    final index = _todos.indexWhere((element) => element.id == todo.id);
    _todos.insert(index, todo);
    _todos.removeAt(index + 1);
  }

  static String _generateId() => UniqueKey().toString();
}
