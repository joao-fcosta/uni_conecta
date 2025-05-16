import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../colors.dart';
import 'direction_button.dart';

class MapPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFEAEFFF),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(LucideIcons.mapPin, color: purple, size: 40),
              SizedBox(height: 8),
              Text(
                'Mapa interativo do campus',
                style: TextStyle(
                  color: purple,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Use os controles para navegar ou selecione\num local da lista abaixo',
                textAlign: TextAlign.center,
                style: TextStyle(color: purple),
              ),
            ],
          ),
          Positioned(
            right: 12,
            child: Column(
              children: const [
                DirectionButton(icon: Icons.arrow_upward),
                DirectionButton(icon: Icons.arrow_back),
                DirectionButton(icon: Icons.arrow_forward),
                DirectionButton(icon: Icons.arrow_downward),
              ],
            ),
          ),
          const Positioned(
            bottom: 8,
            right: 8,
            child: Row(
              children: [
                Icon(LucideIcons.mapPin, color: purple),
                SizedBox(width: 4),
                Icon(Icons.fullscreen, color: purple),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
