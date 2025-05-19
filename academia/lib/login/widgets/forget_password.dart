import 'package:flutter/material.dart';

class ButtomForgetPassword extends StatelessWidget {
  const ButtomForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, '/forgetPassword');
      },
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        textStyle: TextStyle(
          decoration: TextDecoration.underline,
        ),
      ),
      child: Text('Esqueci minha senha'),
    );
  }
}
