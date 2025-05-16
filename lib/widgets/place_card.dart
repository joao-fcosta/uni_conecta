import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../colors.dart';

class PlaceCard extends StatelessWidget {
  final String title;
  final String category;
  final bool selected;

  const PlaceCard({
    required this.title,
    required this.category,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: selected ? purple.withOpacity(0.1) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color(0x11000000),
            blurRadius: 4,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Row(
        children: [
          const Icon(LucideIcons.mapPin, color: purple),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: purpleDark,
                ),
              ),
              Text(
                category,
                style: const TextStyle(color: purple),
              ),
            ],
          )
        ],
      ),
    );
  }
}