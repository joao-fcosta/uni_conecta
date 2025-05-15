import 'package:flutter/material.dart';
import '../colors.dart';

class ClassCard extends StatelessWidget {
  final String title;
  final String location;
  final String time;

  const ClassCard(
      {super.key,
      required this.title,
      required this.location,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2))
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 16)),
          const SizedBox(height: 4),
          Text(location,
              style:
                  const TextStyle(color: Colors.black54, fontWeight: FontWeight.w500)),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
                color: purpleLight, borderRadius: BorderRadius.circular(10)),
            child: Text(time,
                style: const TextStyle(
                    color: purpleDark, fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}
