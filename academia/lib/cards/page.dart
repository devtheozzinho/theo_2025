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
            '',
            style: GoogleFonts.poppins(
              fontSize: 32,
            ),
          ),
          centerTitle: true,
          foregroundColor: Colors.black,
          backgroundColor: Colors.transparent,
        ),
        body: Stack(
          children: [
            GradientApp(
              child: Card(
                elevation: 8,
                margin: EdgeInsets.all(25),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                          Text(
                            'Carro Modelo',
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Descrição do carro e informações que vão ter',
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                            ),
                            onPressed: () {},
                            child: Text('Reservar'),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
