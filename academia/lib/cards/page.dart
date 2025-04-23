import 'package:flutter/material.dart';
import '../login/widgets/gradient.dart';
import 'package:google_fonts/google_fonts.dart';

class CardProduct extends StatefulWidget {
  @override
  _CardProductState createState() => _CardProductState();
}

class _CardProductState extends State<CardProduct> {
  int currentIndex = 0;

  final List<String> cardContents = [
    'Conteudo do card 1'
        'Conteudo do card 2'
        'Conteudo do card 3'
  ];

  void _nextCar() {
    setState(() {
      currentIndex = (currentIndex + 1) % cardContents.length;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                                Text('Vidro elétrico'),
                                SizedBox(height: 4),
                                Text('12BC4EF'),
                                SizedBox(height: 4),
                                Text('4 pessoas'),
                                SizedBox(height: 4),
                                Text('4 portas')
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('ABS'),
                                SizedBox(height: 4),
                                Text('Automático'),
                                SizedBox(height: 4),
                                Text('Trava elétrica'),
                                SizedBox(height: 4),
                                Text('Ar-condicionado')
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
