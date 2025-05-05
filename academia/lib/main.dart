import 'package:academia/login/view/login.dart';
import 'package:academia/login/widgets/forget_password.dart';
import 'package:flutter/material.dart';
import 'cards/widget.dart';
import 'cards/Model/car_model.dart';
import './form/formulario.dart';
import './login/view/forget_password.dart';

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
      "placa": "ABC1234",
      "name": "Chevrolet Onix",
      "category": "Categoria B - Compacto com Ar",
      "detalhes": {
        "freioabs": true,
        "lugares": 4,
        "arcondicionado": true,
        "vidroletrico": true,
        "automatico": true,
        "portas": 4
      }
    };

    final Car car = Car.fromJson(jsonCarro);

    return MaterialApp(
        title: 'Rent car',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: 'homepage',
        routes: {
          'homepage': (context) => MeuAplicativo(),
          '/form': (context) => Formulario(),
          '/cards': (context) => CardProduct(detalhes: car),
          '/forgetPassword': (context) => ForgetPassword(),
        });
  }
}
