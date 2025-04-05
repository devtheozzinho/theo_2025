import 'package:flutter/material.dart';

class User {
  String email = 'admin@email.com';
  String password = '123456';

  User(this.email, this.password);
}

void validatorLogin(BuildContext context, String email, String password) {
  if (email.isEmpty || !email.contains('@')) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Por favor insira um e-mail válido'),
      ),
    );
    return;
  }
  if (password.isEmpty || password.length < 6) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Por favor insira a senha correta'),
      ),
    );
    return;
  }
  if (email == 'admin@email.com' && password == '123456') {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Login realizado com sucesso'),
      ),
    );
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Login inválido, por favor revise os campos'),
      ),
    );
  }
}
