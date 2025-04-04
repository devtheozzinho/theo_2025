import 'package:academia/login/login_controller/formulario.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/icon.dart';
import './widgets/Gradient.dart';
// import 'package:material_color_utilities/material_color_utilities.dart';

class MeuAplicativo extends StatelessWidget {
  const MeuAplicativo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(
            'Rent Car',
            style: GoogleFonts.poppins(
              fontSize: 44,
            ),
          ),
          centerTitle: true,
          foregroundColor: Colors.black,
          backgroundColor: Colors.transparent,
        ),
        body: Stack(
          children: [
            GradientApp(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconCar(),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Insira seu Email por favor',
                        ),
                        textAlign: TextAlign.center),
                    SizedBox(height: 16),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Insira sua senha por favor',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButtomApp(),
                    SizedBox(
                      height: 10,
                    ),
                    CadastroApp(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ElevatedButtomApp extends StatelessWidget {
  const ElevatedButtomApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(16),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.login,
            color: Colors.white,
          ),
          label: Text(
            'Entrar',
          ),
          style: ElevatedButton.styleFrom(
            minimumSize: Size(150, 40),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            foregroundColor: Colors.white,
            backgroundColor: Color(0xFF808080),
          ),
        ),
      ],
    );
  }
}

class CadastroApp extends StatelessWidget {
  const CadastroApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 150,
      child: ElevatedButton.icon(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Formulario(),
            ),
          );
        },
        icon: Icon(Icons.person_add, color: Colors.white),
        label: Text(
          'Cadastre-se',
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(
            0xFF808080,
          ),
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
