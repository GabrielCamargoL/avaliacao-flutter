import 'package:avaliacao/screens/login_screen.dart';
import 'package:avaliacao/screens/results_screen.dart';
import 'package:avaliacao/screens/techs_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Avaliação',
      theme: ThemeData(
        primaryColor:const Color.fromARGB(220, 70, 20, 43),
      ),
      home: const LoginScreen(),
    );
  }
}





