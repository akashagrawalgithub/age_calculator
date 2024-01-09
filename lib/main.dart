import 'package:age_calculator/age_calculator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Age Calculator',
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
