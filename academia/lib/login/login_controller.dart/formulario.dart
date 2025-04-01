import 'package:flutter/material.dart';

class Formulario extends StatelessWidget {
  const Formulario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      backgroundColor: Colors.blueAccent,
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(10)),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Nome completo',
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Email',
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Empresa',
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'CPF'),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Senha',
            ),
          ),
        ],
      ),
    );
  }
}
