import 'package:flutter/material.dart';
import '../login/widgets/gradient.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Model/card_model.dart';

class CardProduct extends StatefulWidget {
  final DetailsCar detalhes;
  @override
  _CardProductState createState() => _CardProductState();

  const CardProduct({super.key, required this.detalhes});
}

class _CardProductState extends State<CardProduct> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final detalhes = widget.detalhes;
    return Material(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(
            'Modelos',
            style: GoogleFonts.poppins(fontSize: 32, color: Colors.black),
          ),
          centerTitle: true,
          foregroundColor: Colors.black,
          backgroundColor: Colors.transparent,
        ),
        body: GradientApp(
          child: Card(
            elevation: 8,
            margin: EdgeInsets.all(24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  title: Text('Chevrolet Onix 2020 vermelho'),
                  subtitle: Text('Categoria B - Compacto Com Ar'),
                  titleTextStyle:
                      GoogleFonts.poppins(fontSize: 18, color: Colors.black),
                ),
                SizedBox(
                  height: 45,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(15),
                  ),
                  child: Image.network(
                    'https://st4.depositphotos.com/21932260/23647/i/1600/depositphotos_236476052-stock-illustration-car-white-background.jpg',
                    alignment: Alignment.center,
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: 4),
                                Text(detalhes.arcondicionado == true
                                    ? 'Ar-condicionado'
                                    : ''),
                                SizedBox(height: 4),
                                Text(detalhes.automatico == true
                                    ? 'Automatico'
                                    : ''),
                                SizedBox(height: 4),
                                Text(detalhes.freioabs == true ? 'ABS' : ''),
                                SizedBox(height: 4),
                                Text(detalhes.lugares == 4 ? '4 lugares' : '')
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(detalhes.portas == 4 ? '4 portas' : ''),
                                SizedBox(height: 4),
                                Text(
                                    detalhes.placa == 'ABC123' ? 'ABC123' : ''),
                                SizedBox(height: 4),
                                Text(detalhes.vidroletrico == true
                                    ? 'Vidro elétrico'
                                    : ''),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        icon: Icon(Icons.directions_car),
                        label: Text('Reservar'),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
