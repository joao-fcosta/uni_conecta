import 'package:flutter/material.dart';
import '../colors.dart';
import 'menu_item.dart'; // 👈 Importação aqui

class MenuModal extends StatelessWidget {
  const MenuModal({super.key});

  void _navigate(BuildContext context, String routeName) {
    Navigator.pop(context);
    Navigator.pushNamed(context, routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Menu", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: [
              MenuItem(icon: Icons.dashboard, label: 'Dashboard', onTap: () => _navigate(context, '/home')),
              MenuItem(icon: Icons.card_giftcard, label: 'Bolsas e Auxílios', onTap: () => _navigate(context, '/scholarship')),
              MenuItem(icon: Icons.group, label: 'Mentorias', onTap: () => _navigate(context, '/mentoring')),
              MenuItem(icon: Icons.map, label: 'Mapa', onTap: () => _navigate(context, '/map')),
              MenuItem(icon: Icons.schedule, label: 'Horários', onTap: () => _navigate(context, '/schedule')),
              MenuItem(icon: Icons.menu_book, label: 'Regulamentos', onTap: () => _navigate(context, '/regulations')),
              MenuItem(icon: Icons.work, label: 'Trabalhos'),
              MenuItem(icon: Icons.notifications, label: 'Notificações'),
              MenuItem(icon: Icons.person, label: 'Perfil', onTap: () => _navigate(context, '/userprofile')),
            ],
          ),
        ],
      ),
    );
  }
}
