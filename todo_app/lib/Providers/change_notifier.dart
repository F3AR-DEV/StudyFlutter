import 'package:flutter/material.dart';
import 'package:todo_app/model/todo.dart';

class ToDoProvider extends ChangeNotifier {
  List<ToDo> todosList = ToDo.todoList();
  List<ToDo> _foundToDo = [];

  ToDoProvider() {
    _foundToDo = todosList;
  }

  List<ToDo> get foundToDo => _foundToDo;
  void handleToDoChange(ToDo todo) {
    todo.isDone = !todo.isDone;
    notifyListeners();
  }

  void deleteToDoItem(String id) {
    todosList.removeWhere((item) => item.id == id);
    notifyListeners();
  }

  void addToDoItem(String toDo, bool isDone) {
    todosList.add(ToDo(id: DateTime.now().millisecondsSinceEpoch.toString(), todoText: toDo, isDone: isDone));
    notifyListeners();
  }

  void runFilter(String enteredKeyword) {
    if (enteredKeyword.isEmpty) {
      _foundToDo = todosList;
    } else {
      _foundToDo = todosList.where((item) => item.todoText!.toLowerCase().contains(enteredKeyword.toLowerCase())).toList();
    }
    notifyListeners();
  }
}
