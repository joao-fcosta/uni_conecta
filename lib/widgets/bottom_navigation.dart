import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../colors.dart';
import 'menu_modal.dart';

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
        Navigator.pushNamed(context, '/scholarship');
        break;
      case 2:
        Navigator.pushNamed(context, '/mentoring');
        break;
      case 3:
        Navigator.pushNamed(context, '/map');
        break;
      case 4:
        Navigator.pushNamed(context, '/schedule');
        break;
      case 5:
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          ),
          builder: (context) => const MenuModal(),
        );
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
        BottomNavigationBarItem(icon: Icon(LucideIcons.graduationCap), label: 'Dashboard'),
        BottomNavigationBarItem(icon: Icon(LucideIcons.award), label: 'Bolsas e Auxílios'),
        BottomNavigationBarItem(icon: Icon(LucideIcons.users), label: 'Mentorias'),
        BottomNavigationBarItem(icon: Icon(LucideIcons.mapPin), label: 'Mapa'),
        BottomNavigationBarItem(icon: Icon(LucideIcons.calendar), label: 'Horários'),
        BottomNavigationBarItem(icon: Icon(LucideIcons.menu), label: 'Menu'),
      ],
    );
  }
}
