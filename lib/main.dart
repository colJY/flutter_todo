import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todolist/screens/home_screen.dart';

void main() async {
  await Hive.initFlutter();

  var box = await Hive.openBox('myBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}
