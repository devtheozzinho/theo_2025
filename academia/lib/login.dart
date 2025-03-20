import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ElevatedButtomApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(padding: EdgeInsets.all(14)),
        ElevatedButton.icon(
          onPressed: () {
            print('Botão pressionado');
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
