import 'package:flutter/material.dart';
import 'package:momentum/momentum.dart';
import 'package:mvc/controllers/gamecontroller.dart';
import 'package:mvc/views/gameview.dart';

void main() {
  runApp(
    Momentum(
      controllers: [GameController()],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter MVC Momentum",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter MVC Momentum"),
          backgroundColor: Colors.teal[300],
        ),
        body: const GameView(),
      ),
    );
  }
}
