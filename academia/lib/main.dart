import 'package:academia/login.dart';
import 'package:flutter/material.dart';
import './user_name.dart';

void main() {
  runApp(const MyApp());
  String username = "admin";
  String password = "1234";
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Placa de carro app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
