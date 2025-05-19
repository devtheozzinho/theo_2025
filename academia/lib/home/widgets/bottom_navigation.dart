import 'package:flutter/material.dart';

class NavigationButtom extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const NavigationButtom({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Busca',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.car_rental),
          label: 'Carros',
        ),
      ],
    );
  }
}
