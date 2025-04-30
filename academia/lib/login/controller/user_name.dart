import 'package:flutter/material.dart';
import '../../form/form_controller.dart';

class User {
  String email = 'admin@email.com';
  String password = '123456';

  User(this.email, this.password);
}

void validatorLogin(BuildContext context, String email, String password) {
  if (email.isEmpty || !email.contains('@')) {
    showMessage('Por favor insira um e-mail válido', context);
    return;
  }
  if (password.isEmpty || password.length < 6) {
    showMessage('Por favor insira a senha correta', context);
    return;
  }
  if (email == 'admin@email.com' && password == '123456') {
    showMessage('Login realizado com sucesso', context);
    return;
  } else {
    showMessage('Login inválido, por favor revise os campos', context);
    return;
  }
}
