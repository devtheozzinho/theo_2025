import 'package:flutter/material.dart';
// import '../../form/form_controller.dart';

class ConfirFormUSer extends StatelessWidget {
  const ConfirFormUSer({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: ElevatedButton.icon(
        icon: Icon(
          Icons.login,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/cards');
          // validatorCadastro(context);
        },
        label: Text(
          'Confirmar cadastro',
        ),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(150, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          foregroundColor: Colors.white,
          backgroundColor: Color.fromARGB(255, 39, 38, 73),
        ),
      ),
    );
  }
}