import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class CategoryChip extends StatelessWidget {
  final IconData icon;
  final String label;

  const CategoryChip({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: Icon(icon, color: purpleDark),
      label: Text(label),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Color(0xFFE0E0E0)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    );
  }
}