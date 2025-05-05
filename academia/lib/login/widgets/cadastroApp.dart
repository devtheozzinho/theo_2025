import 'package:flutter/material.dart';

class CadastroApp extends StatelessWidget {
  const CadastroApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 150,
      child: ElevatedButton.icon(
        onPressed: () {
          Navigator.pushNamed(context, '/form');
        },
        icon: Icon(Icons.person_add, color: Colors.white),
        label: Text(
          'Cadastre-se',
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 128, 128, 128),
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}