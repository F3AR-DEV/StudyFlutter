import 'package:flutter/material.dart';
import 'package:todo_app/Model/todo.dart';

class ToDoProvider extends ChangeNotifier {
  final List<ToDo> _todosList = ToDo.todoList();
  List<ToDo> _foundToDo = [];

  ToDoProvider() {
    _foundToDo = _todosList;
  }

  List<ToDo> get foundToDo => _foundToDo;

  void handleToDoChange(ToDo todo) {
    todo.isDone = !todo.isDone;
    notifyListeners();
  }

  void deleteToDoItem(String id) {
    _todosList.removeWhere((item) => item.id == id);
    notifyListeners();
  }

  void addToDoItem(String toDo, bool isDone) {
    _todosList.add(ToDo(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      todoText: toDo,
      isDone: isDone,
    ));
    notifyListeners();
  }

  void runFilter(String enteredKeyword) {
    if (enteredKeyword.isEmpty) {
      _foundToDo = _todosList;
    } else {
      _foundToDo = _todosList
          .where((item) => item.todoText!.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    notifyListeners();
  }
}
