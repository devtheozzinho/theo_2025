import 'package:academia/home/home.dart';
import 'package:flutter/material.dart';
import '../home/widgets/bottom_navigation.dart';
import '../login/widgets/gradient.dart';
import 'package:google_fonts/google_fonts.dart';
import '../login/widgets/search_car.dart';
import 'Model/car_model.dart';

class CardProduct extends StatefulWidget {
  final Car detalhes;
  @override
  // ignore: library_private_types_in_public_api
  _CardProductState createState() => _CardProductState();

  const CardProduct({super.key, required this.detalhes});
}

class _CardProductState extends State<CardProduct> {
  int currentIndex = 0;

  String getTitle(int index) {
    switch (index) {
      case 0:
        return 'Home';
      case 1:
        return 'Busca';
      case 2:
        return 'Modelos';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    final car = widget.detalhes;
    final details = car.detalhes;
    return Material(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(
            getTitle(currentIndex),
            style: GoogleFonts.poppins(
                fontSize: 32, color: Colors.black, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          foregroundColor: Colors.black,
          backgroundColor: Colors.transparent,
        ),
        body: IndexedStack(
          index: currentIndex,
          children: [
            HomePage(),
            SearchCar(),
            GradientApp(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 130),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Card(
                      elevation: 8,
                      margin: EdgeInsets.all(24),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ListTile(
                            title: Text(car.name ?? 'Sem nome'),
                            subtitle: Text(car.category ?? 'Sem categoria'),
                            titleTextStyle: GoogleFonts.poppins(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
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
                              height: 130,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 4),
                                          details?.arcondicionado == true
                                              ? Text(
                                                  'Ar-condicionado',
                                                  textAlign: TextAlign.start,
                                                )
                                              : SizedBox(height: 4),
                                          SizedBox(height: 4),
                                          details?.freioabs == true
                                              ? Text(
                                                  'Freio ABS',
                                                  textAlign: TextAlign.start,
                                                )
                                              : SizedBox(height: 4),
                                          details?.lugares == 4 ||
                                                  details?.lugares == 5
                                              ? Text(
                                                  '4 lugares',
                                                  textAlign: TextAlign.start,
                                                )
                                              : SizedBox(height: 4)
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text('Placa: ${car.placa}'),
                                          SizedBox(height: 4),
                                          details?.automatico == true
                                              ? Text('Camb Automático')
                                              : SizedBox(height: 4),
                                          details?.vidroletrico == true
                                              ? Text('Vidros Elétricos')
                                              : SizedBox(
                                                  height: 4,
                                                )
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
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: NavigationButtom(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(
              () {
                currentIndex = index;
              },
            );
          },
        ),
      ),
    );
  }
}
