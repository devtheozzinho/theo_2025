import 'package:academia/login/form/formulario.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/icon.dart';
import './widgets/Gradient.dart';
import './controller/user_name.dart';
// import 'package:material_color_utilities/material_color_utilities.dart';

class MeuAplicativo extends StatefulWidget {
  @override
  _MeuAplicativoState createState() => _MeuAplicativoState();
}

class _MeuAplicativoState extends State<MeuAplicativo> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  @override
  void dispose() {
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

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
                child: SafeArea(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconCar(),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 280,
                          child: TextFormField(
                              controller: emailcontroller,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                hintText: 'Insira seu Email por favor',
                              ),
                              textAlign: TextAlign.center),
                        ),
                        SizedBox(height: 16),
                        SizedBox(
                          width: 280,
                          child: TextFormField(
                            controller: passwordcontroller,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              hintText: 'Insira sua senha por favor',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButtomApp(
                            emailcontroller: emailcontroller,
                            passwordcontroller: passwordcontroller),
                        SizedBox(
                          height: 10,
                        ),
                        CadastroApp(),
                      ],
                    ),
                  ),
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
  final TextEditingController? emailcontroller;
  final TextEditingController? passwordcontroller;

  const ElevatedButtomApp({
    Key? key,
    required this.emailcontroller,
    required this.passwordcontroller,
  }) : super(key: key);

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
          onPressed: () {
            validatorLogin(
                context, emailcontroller!.text, passwordcontroller!.text);
          },
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
          backgroundColor: Color.fromARGB(255, 128, 128, 128),
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
