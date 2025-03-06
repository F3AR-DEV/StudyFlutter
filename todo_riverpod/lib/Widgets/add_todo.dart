import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_riverpod/providers/todo_provider.dart';

class AddTodo extends ConsumerWidget {
  final TextEditingController _controller = TextEditingController();

  AddTodo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Nueva tarea'),
            ),
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              if (_controller.text.isNotEmpty) {
                ref.read(todoListProvider.notifier).addTodo(_controller.text);
                _controller.clear();
              }
            },
          )
        ],
      ),
    );
  }
}
