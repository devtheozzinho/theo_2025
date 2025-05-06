import 'package:flutter/material.dart';

class GradientApp extends StatelessWidget {
  final Widget child;

  const GradientApp({super.key, required this.child});
  // o required que eu coloquei era o que precisa para voce inicializar a variavel e permitir o parametro.

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromARGB(255, 118, 189, 248),
            Color.fromARGB(255, 248, 246, 246),
          ],
        ),
      ),
      child: child,
    );
  }
}
