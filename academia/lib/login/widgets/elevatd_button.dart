import 'package:flutter/material.dart';

class ElevatedButtomApp extends StatelessWidget {
  final TextEditingController? emailcontroller;
  final TextEditingController? passwordcontroller;

  const ElevatedButtomApp({
    super.key,
    required this.emailcontroller,
    required this.passwordcontroller,
  });

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
          onPressed: () {
            // validatorLogin(
            //     context, emailcontroller!.text, passwordcontroller!.text);
            Navigator.pushNamed(context, '/cards');
          },
          icon: Icon(
            Icons.login,
            color: Colors.white,
          ),
          label: Text(
            'Entrar',
          ),
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
