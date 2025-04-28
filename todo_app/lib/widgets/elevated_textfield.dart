import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/Providers/change_notifier.dart';

class ElevatedTextfield extends StatelessWidget {
  const ElevatedTextfield({
    super.key,
    required this.textController,
    required this.todoProvider,
  });

  final TextEditingController textController;
  final ToDoProvider todoProvider;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(bottom: 20, right: 20, left: 20),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 10.0,
                    spreadRadius: 0.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: textController,
                decoration:
                    InputDecoration(hintText: 'Agrega una nueva tarea', border: InputBorder.none),
                onSubmitted: (value) {
                  if (value.isNotEmpty) {
                    todoProvider.addToDoItem(value, false);
                    textController.clear();
                  }
                },
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20, right: 20),
            child: ElevatedButton(
              onPressed: () {
                final todoProvider = Provider.of<ToDoProvider>(context, listen: false);
                if (textController.text.isNotEmpty) {
                  todoProvider.addToDoItem(textController.text, false);
                  textController.clear();
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(60, 60),
                elevation: 10,
              ),
              child: Text(
                '+',
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
