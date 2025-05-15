import 'package:flutter/material.dart';
import '../colors.dart';

class MenuModal extends StatelessWidget {
  const MenuModal({super.key});

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
            children: const [
              MenuItem(icon: Icons.dashboard, label: 'Dashboard'),
              MenuItem(icon: Icons.card_giftcard, label: 'Bolsas e Auxílios'),
              MenuItem(icon: Icons.group, label: 'Mentorias'),
              MenuItem(icon: Icons.map, label: 'Mapa'),
              MenuItem(icon: Icons.schedule, label: 'Horários'),
              MenuItem(icon: Icons.menu_book, label: 'Regulamentos'),
              MenuItem(icon: Icons.work, label: 'Trabalhos'),
              MenuItem(icon: Icons.notifications, label: 'Notificações'),
              MenuItem(icon: Icons.person, label: 'Perfil'),
            ],
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const MenuItem({required this.icon, required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(16),
          child: Icon(icon, color: purple),
        ),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
