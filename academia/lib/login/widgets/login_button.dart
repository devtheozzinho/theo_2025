import 'package:flutter/material.dart';

class LoginApp extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final String? email;
  final String? senha;

  LoginApp({super.key, required this.email, required this.senha});

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
          onPressed: () async {
            // if (_formKey.currentState!.validate()) {
            //   bool sucesso = await (email!, senha!);
            //   if (sucesso) {
            //     Navigator.pushNamed(context, '/cards');
            //   } else {
            //     ScaffoldMessenger.of(context).showSnackBar(
            //       SnackBar(
            //         content: Text('Email ou senha incorretos'),
            //       ),
            //     );
            //   }
            // }
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
    );
  }
}
