import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/icon.dart';
import '../widgets/Gradient.dart';
// import '../controller/user_name.dart';
// import '../../form/form_controller.dart';
// import '../../form/formulario.dart';
import '../widgets/elevatd_button.dart';
import '../widgets/forget_password.dart';
import '../widgets/cadastro_app.dart';

class MeuAplicativo extends StatefulWidget {
  const MeuAplicativo({super.key});

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
                        IconApp(
                          cor: Colors.black,
                          tamanho: 200,
                          icone: Icons.directions_car,
                        ),
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
                        SizedBox(
                          height: 10,
                        ),
                        ButtomForgetPassword(),
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
