import 'package:flutter/material.dart';
import 'package:todo_app/Providers/change_notifier.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key, required this.todoProvider});
  final ToDoProvider todoProvider;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: todoProvider.foundToDo.length,
      itemBuilder: (context, index) {
        final todo = todoProvider.foundToDo.reversed.toList()[index];
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: ListTile(
            onTap: () => todoProvider.handleToDoChange(todo),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            tileColor: Colors.white,
            leading: Icon(
              todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
              color: Colors.blue,
            ),
            title: Text(
              todo.todoText ?? 'Sin título',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                decoration: todo.isDone ? TextDecoration.lineThrough : null,
              ),
            ),
            trailing: Container(
              padding: EdgeInsets.zero,
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(5),
              ),
              child: IconButton(
                tooltip: 'Eliminar tarea',
                color: Colors.white,
                iconSize: 18,
                icon: const Icon(Icons.delete),
                onPressed: () => todoProvider.deleteToDoItem(todo.id!),
              ),
            ),
          ),
        );
      },
    );
  }
}
