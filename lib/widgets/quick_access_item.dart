import 'package:flutter/material.dart';

class QuickAccessItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color bgColor;
  final bool selected;
  final VoidCallback? onTap;

  const QuickAccessItem({
    super.key,
    required this.icon,
    required this.label,
    required this.bgColor,
    this.selected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: selected ? bgColor : bgColor.withOpacity(0.3),
              shape: BoxShape.circle,
              border: selected
                  ? Border.all(color: Colors.black54, width: 2)
                  : null,
            ),
            child: Center(
              child: Icon(
                icon,
                size: 26,
                color: selected ? Colors.white : Colors.black87,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12.5,
              fontWeight: FontWeight.w500,
              color: selected ? Colors.black : Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
