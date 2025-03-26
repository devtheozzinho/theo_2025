import 'package:flutter/material.dart';

class MeuAplicativo extends StatelessWidget {
  const MeuAplicativo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alugator'),
        centerTitle: true,
        foregroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          GradientApp(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'enter your email please'),
                    textAlign: TextAlign.center),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'enter your password please'),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                ElevatedButtomApp(),
                CadastroApp(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ElevatedButtomApp extends StatelessWidget {
  const ElevatedButtomApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(padding: EdgeInsets.all(14)),
        ElevatedButton.icon(
          onPressed: () {
            // loguin('admin', '123');
            print('deu Certo');
          },
          icon: Icon(
            Icons.login,
            color: Colors.black,
          ),
          label: Text('LOGIN'),
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black, backgroundColor: Colors.blue),
        ),
      ],
    );
  }
}

class GradientApp extends StatelessWidget {
  const GradientApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.blue, Colors.white],
          ),
        ),
        child: SizedBox.expand());
  }
}

class CadastroApp extends StatelessWidget {
  const CadastroApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: () {
          print('botão pressionado');
        },
        icon: Icon(Icons.person_add, color: Colors.white),
        label: Text('Cadastre-se'),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
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
