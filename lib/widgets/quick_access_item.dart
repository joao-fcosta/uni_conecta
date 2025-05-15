import 'package:flutter/material.dart';

class QuickAccessItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color bgColor;
  final bool selected;

  const QuickAccessItem({
    super.key,
    required this.icon,
    required this.label,
    required this.bgColor,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            color: bgColor.withOpacity(0.3),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              icon,
              size: 26,
              color: Colors.black87,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 12.5,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
