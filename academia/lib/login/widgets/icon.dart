import 'package:flutter/material.dart';

class IconApp extends StatelessWidget {
  final IconData icone;
  final Color? cor;
  final double? tamanho;

  const IconApp({
    super.key,
    this.cor,
    required this.icone,
    this.tamanho = 200,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      icone,
      color: cor ?? Colors.black,
      size: tamanho ?? 200,
    );
  }
}
