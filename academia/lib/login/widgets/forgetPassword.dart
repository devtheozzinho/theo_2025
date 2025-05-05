import 'package:flutter/material.dart';

class ButtomForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: TextButton(
        onPressed: () {},
        child: Text('Esqueci minha senha'),
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          textStyle: TextStyle(
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}