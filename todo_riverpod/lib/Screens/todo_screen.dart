import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_riverpod/widgets/todo_list.dart';
import 'package:todo_riverpod/widgets/add_todo.dart';

class TodoScreen extends ConsumerWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'To-Do con Riverpod',
          style: TextStyle(color: Colors.white), // Estilo del texto
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          AddTodo(),
          Expanded(
            child: TodoList(),
          ),
        ],
      ),
    );
  }
}
