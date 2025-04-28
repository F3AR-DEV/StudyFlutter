import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/widgets/build_app_bar.dart';
import 'package:todo_app/widgets/elevated_textfield.dart';
import 'package:todo_app/widgets/search_box.dart';
import 'package:todo_app/widgets/todo_list.dart';
import 'package:todo_app/Providers/change_notifier.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final todoProvider = Provider.of<ToDoProvider>(context);
    TextEditingController textController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BuildAppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: SearchBox(
              onSearch: (value) {
                todoProvider.runFilter(value);
              },
            ),
          ),
          Expanded(
            child: TodoList(todoProvider: todoProvider),
          ),
          ElevatedTextfield(
            textController: textController,
            todoProvider: todoProvider,
          ),
        ],
      ),
    );
  }
}
