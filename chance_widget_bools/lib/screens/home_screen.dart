import 'package:chance_widget_bools/widgets/widget_1.dart';
import 'package:chance_widget_bools/widgets/widget_2.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  bool existWidget = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              setState(() {
                existWidget = !existWidget;
              });
            },
            child: Text(existWidget ? 'Widget2 ' : 'Widget1 '),
          ),
          SizedBox(height: 12),
          existWidget ? Widget1() : Widget2(),
        ],
      ),
    );
  }
}
