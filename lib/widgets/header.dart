import 'package:flutter/material.dart';
import '../colors.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: purpleLight,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Olá, Maria!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'Quarta-Feira, 14 De Maio',
            style: TextStyle(
              color: purple,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              children: const [
                Icon(Icons.notifications_none, color: purple),
                SizedBox(width: 8),
                Text(
                  'Notificações',
                  style: TextStyle(color: purple),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
