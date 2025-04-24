import 'package:flutter/material.dart';

import 'cards/widget.dart';
import './cards/Model/card_model.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> jsonCarro = {
      "id": 1,
      "portas": 4,
      "placa": "ABC123",
      "automatico": true,
      "arcondicionado": true,
      "travaeletrica": true,
      "lugares": 4,
      "freioabs": true
    };

    final cardDetalhes = DetailsCar.fromJson(jsonCarro);

    return MaterialApp(
      title: 'Rent car',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: CardProduct(
        detalhes: cardDetalhes,
      ),
    );
  }
}
