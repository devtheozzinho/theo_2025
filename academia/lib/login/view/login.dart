// ignore_for_file: library_private_types_in_public_api

import 'package:academia/form/controller/form_controller.dart';
import 'package:academia/login/controller/user_name.dart';
import 'package:flutter/material.dart';
import '../widgets/Gradient.dart';
import '../widgets/login_button.dart';
import '../widgets/forget_password.dart';
import '../widgets/cadastro_app.dart';

class MeuAplicativo extends StatefulWidget {
  const MeuAplicativo({super.key});

  @override
  _MeuAplicativoState createState() => _MeuAplicativoState();
}

class _MeuAplicativoState extends State<MeuAplicativo> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController senhacontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailcontroller.dispose();
    senhacontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Stack(
          children: [
            GradientApp(
              child: Center(
                child: SafeArea(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.all(10),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/carro.png'),
                          SizedBox(height: 20),
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
                                validator: (value) {
                                  if (value == null || value.trim().isEmpty) {
                                    return 'Este campo é obrigatório';
                                  }
                                  return null;
                                },
                                textAlign: TextAlign.center),
                          ),
                          SizedBox(height: 16),
                          SizedBox(
                            width: 280,
                            child: TextFormField(
                              controller: senhacontroller,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                hintText: 'Insira sua senha por favor',
                              ),
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return 'Este campo é obriatório';
                                }
                                return null;
                              },
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 10),
                          LoginApp(
                            email: emailcontroller.text.trim(),
                            senha: senhacontroller.text.trim(),
                          ),
                          SizedBox(height: 10),
                          CadastroApp(),
                          SizedBox(height: 10),
                          ButtomForgetPassword(),
                        ],
                      ),
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
