import 'package:flutter/material.dart';
import '../login.dart';
import '../widgets/gradient.dart';

class Formulario extends StatelessWidget {
  const Formulario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Cadastro de Usuário',
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: GradientApp(
        child: Padding(
          padding: EdgeInsets.only(top: kToolbarHeight + 4),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(6),
                    labelText: 'Nome completo',
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(6),
                    labelText: 'Email',
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(6),
                    labelText: 'Empresa',
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(6),
                    labelText: 'CPF',
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(6),
                    labelText: 'Senha',
                  ),
                ),
                ElevatedButtomApp(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
