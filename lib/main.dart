import 'package:flutter/material.dart';
import 'package:week_six/screens/home_screen.dart';

void main() => runApp(const Ui());

class Ui extends StatelessWidget {
  const Ui({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
