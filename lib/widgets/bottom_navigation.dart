import 'package:flutter/material.dart';
import '../colors.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    // Navegação com base no índice
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/home');
        break;
      case 1:
      // Navegar para Bolsas e Auxílios, se existir
        break;
      case 2:
      // Navegar para Mentorias, se existir
        break;
      case 3:
        Navigator.pushNamed(context, '/map');
        break;
      case 4:
      // Navegar para Horários, se existir
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      selectedItemColor: purple,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      onTap: _onItemTapped,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Dashboard'),
        BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: 'Bolsas e Auxílios'),
        BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Mentorias'),
        BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Mapa'),
        BottomNavigationBarItem(icon: Icon(Icons.schedule), label: 'Horários'),
      ],
    );
  }
}
