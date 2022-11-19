import 'package:flutter/material.dart';
import 'package:tugas10/HomeScreen.dart';
import 'package:tugas10/LoginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Form Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      routes: {
        HomeScreen.routing: (context) => const HomeScreen(),
        LoginScreen.routing: (context) => const LoginScreen(),
      },
    );
  }
}
