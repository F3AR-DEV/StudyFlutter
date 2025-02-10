import 'package:flutter/material.dart';
import 'package:posts_flutter/Widgets/floating_button.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Feed Card',
          style: TextStyle(
            color: Colors.white, // Cambia el color a azul
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20, bottom: 20),
        padding: EdgeInsets.all(20),
        width: double.infinity,
        height: 350,
        decoration: const BoxDecoration(color: Colors.red),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              CircleAvatar(
                child: Text('J'),
              ),
              SizedBox(width: 10),
              Text(
                'data',
                style: TextStyle(color: Colors.blueAccent, fontSize: 20),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingButton(),
    );
  }
}
