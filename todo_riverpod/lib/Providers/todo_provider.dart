import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_riverpod/Models/todo_model.dart';
part 'todo_provider.g.dart'; // Archivo generado automáticamente

@riverpod
class TodoList extends _$TodoList {
  @override
  List<Todo> build() => Todo.todoList(); // Estado inicial de la lista de tareas

  void addTodo(String title) {
    final newTodo = Todo(id: DateTime.now().toString(), title: title);
    state = [...state, newTodo];
  }

  void toggleTodo(String id) {
    state = state.map((todo) => todo.id == id ? todo.copyWith(isCompleted: !todo.isCompleted) : todo).toList();
  }

  void removeTodo(String id) {
    state = state.where((todo) => todo.id != id).toList();
  }
}
