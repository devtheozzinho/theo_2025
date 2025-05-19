import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/gradient.dart';
import '../widgets/icon.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "Redefinição de senha",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
        ),
      ),
      body: GradientApp(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: kToolbarHeight + 50,
              ),
              IconApp(
                icone: Icons.lock,
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: 320,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: "Insira seu e-mail",
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 50),
                    backgroundColor: Color.fromARGB(255, 39, 38, 73),
                    foregroundColor: Colors.white),
                onPressed: () {},
                child: Text(
                  'Enviar',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
