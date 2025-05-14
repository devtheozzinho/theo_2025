import 'package:academia/form/controller/form_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

final userController = TextEditingController();
final senhaController = TextEditingController();

Future<bool> login(String? email, String? senha) async {
  try {
    // if (email != null && senha != null) {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text.trim(),
      password: senhaController.text.trim(),
    );

    print('Login realizado com sucesso');
    return true;
    // } else {
    //   print('E-mail ou senha null');
    //   return false;
    // }
  } on FirebaseAuthException catch (e) {
    String mensagem = '';
    switch (e.code) {
      case 'user-not-found':
        mensagem = 'Usuário não encontrado. Cadastre-se primeiro.';
        break;
      case 'wrong-password':
        mensagem = 'Senha incorreta.';
        break;
      case 'invalid-email':
        mensagem = 'E-mail inválido.';
        break;
      default:
        mensagem = 'Erro: ${e.message}';
    }
    print(mensagem);
    return false;
  }
}
