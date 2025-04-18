import 'package:flutter/material.dart';
import '../form/form_controller.dart';

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
        onPressed: () {
          validatorCadastro(context);
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
          backgroundColor: Color(0xFF808080),
        ),
      ),
    );
  }
}
