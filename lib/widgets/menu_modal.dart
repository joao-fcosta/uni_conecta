import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
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
              MenuItem(icon: LucideIcons.graduationCap, label: 'Dashboard', onTap: () => _navigate(context, '/home')),
              MenuItem(icon: LucideIcons.award, label: 'Bolsas e Auxílios', onTap: () => _navigate(context, '/scholarship')),
              MenuItem(icon: LucideIcons.users, label: 'Mentorias', onTap: () => _navigate(context, '/mentoring')),
              MenuItem(icon: LucideIcons.mapPin, label: 'Mapa', onTap: () => _navigate(context, '/map')),
              MenuItem(icon: LucideIcons.calendar, label: 'Horários', onTap: () => _navigate(context, '/schedule')),
              MenuItem(icon: LucideIcons.bookOpen, label: 'Regulamentos', onTap: () => _navigate(context, '/regulations')),
              MenuItem(icon: LucideIcons.fileText, label: 'Trabalhos', onTap: () => _navigate(context, '/academic_support')),
              MenuItem(icon: LucideIcons.bell, label: 'Notificações'),
              MenuItem(icon: LucideIcons.settings, label: 'Perfil', onTap: () => _navigate(context, '/userprofile')),
            ],
          ),
        ],
      ),
    );
  }
}
