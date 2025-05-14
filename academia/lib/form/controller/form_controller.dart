import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

final nomeController = TextEditingController();
final idadeController = TextEditingController();
final emailController = TextEditingController();
final cpfController = TextEditingController();
final senhaController = TextEditingController();

void showMessage(String mensagem, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(mensagem),
      duration: Duration(seconds: 5),
    ),
  );
}

bool isMaiorDeIdade(String dataDeNascimento) {
  try {
    final partes = dataDeNascimento.split('/');
    if (partes.length != 3) return false;

    final dia = int.parse(partes[0]);
    final mes = int.parse(partes[1]);
    final ano = int.parse(partes[2]);

    final nascimento = DateTime(ano, mes, dia);
    final dataHoje = DateTime.now();

    final idade = dataHoje.year - nascimento.year;
    final fezAniversarioEsseAno = (dataHoje.month > nascimento.month ||
        dataHoje.month == nascimento.month && dataHoje.day >= nascimento.day);

    final idadeReal = fezAniversarioEsseAno ? idade : idade - 1;

    return idadeReal >= 18;
  } catch (e) {
    return false;
  }
}

void validatorCadastro(BuildContext context) {
  final nome = nomeController.text.trim();
  final idade = idadeController.text.trim();
  final email = emailController.text.trim();
  final cpf = cpfController.text.trim();
  final senha = senhaController.text.trim();

  if (nome.isEmpty ||
      email.isEmpty ||
      idade.isEmpty ||
      cpf.isEmpty ||
      senha.isEmpty) {
    showMessage('Preencha todos os campos.', context);
    return;

    /// o isEmpty verifica se está vazio o campo
  }

  if (!email.contains('@') || !email.contains('.com')) {
    showMessage('Email inválido', context);
    return;

    //aqui está validando se o email NÃO contem @ e .com
  }

  if (cpf.contains('@#¨%¨&**')) {
    showMessage('Preencha corretamente o campo', context);
    return;

    ///aqui valida se contem caracteres especiais no meio
  }
  if (!isMaiorDeIdade(idade)) {
    showMessage('Você precisa ter pelo menos 18 anos.', context);
    return;
  }

  showMessage('Cadastro realizado com sucesso', context);
}

Future<void> formUser() async {
  try {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailController.text.trim(),
      password: senhaController.text.trim(),
    );
    print('Usuário cadastrado com sucesso');
  } on FirebaseAuthException catch (e) {
    String mensagem = '';
    switch (e.code) {
      case 'email-already-in-use':
        mensagem = 'E-mail já está sendo usado';
        break;
      case 'invalid-email':
        mensagem = 'Este e-mail é inválido';
        break;
      case 'weak-password':
        mensagem = 'Senha fraca, use pelo menos 6 caracteres';
        break;
      default:
        mensagem = 'Erro: ${e.message}';
    }
    print(mensagem);
  }
}
