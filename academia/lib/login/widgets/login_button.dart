import 'package:flutter/material.dart';
import '../controller/user_name.dart';

class LoginApp extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final String? email;
  final String? senha;

  LoginApp({super.key, required this.email, required this.senha});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
          ),
          ElevatedButton.icon(
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save(); // salva email e senha
              }
              login(email, senha);
              Navigator.pushNamed(context, '/cards');
            },
            icon: Icon(
              Icons.login,
              color: Colors.white,
            ),
            label: Text('Entrar'),
            style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                foregroundColor: Colors.white,
                backgroundColor: Color.fromARGB(255, 39, 38, 73)),
          ),
        ],
      ),
    );
  }
}
