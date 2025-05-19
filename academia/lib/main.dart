import 'package:academia/firebase_options.dart';
import 'package:academia/login/model/login_model.dart';
import 'package:academia/login/view/login.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'cards/card_car.dart';
import 'cards/Model/car_model.dart';
import './form/formulario.dart';
import './login/view/forget_password.dart';
import 'home/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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

    final Map<String, dynamic> jsonUsuario = {
      "id": 1,
      "user": "usuario@email.com",
      "senha": "senhaSegura123"
    };

    final UserLogin userLogins = UserLogin.fromJson(jsonUsuario);

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
        // '/home': (context) => HomePage()
      },
    );
  }
}
