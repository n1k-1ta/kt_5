import 'package:flutter/material.dart';
import 'package:kttt5/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark, // Устанавливаем темный режим
      ),
      home: HomePage(),
    );
  }
}
