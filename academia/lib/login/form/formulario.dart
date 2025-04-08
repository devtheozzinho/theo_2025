import 'package:flutter/material.dart';
import '../widgets/gradient.dart';
import '../widgets/calendar.dart';

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
            child: Flexible(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  TextFormField(
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      contentPadding: EdgeInsets.all(6),
                      labelText: 'Nome completo',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        // borderSide: ,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      contentPadding: EdgeInsets.all(6),
                      labelText: 'Data de Nascimento',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      contentPadding: EdgeInsets.all(6),
                      labelText: 'Email',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      contentPadding: EdgeInsets.all(6),
                      labelText: 'Empresa',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      contentPadding: EdgeInsets.all(6),
                      labelText: 'CPF',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      contentPadding: EdgeInsets.all(6),
                      labelText: 'Senha',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  ConfirFormUSer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ConfirFormUSer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 200,
      child: ElevatedButton.icon(
        icon: Icon(
          Icons.login,
          color: Colors.white,
        ),
        onPressed: () {},
        label: Text(
          'Confirmar cadastro',
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
    );
  }
}
