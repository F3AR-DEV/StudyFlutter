import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/screens/home.screen.dart';
import 'package:todo_app/Providers/change_notifier.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ToDoProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ToDo App',
        home: const Home(), //* Init home
      ),
    );
  }
}