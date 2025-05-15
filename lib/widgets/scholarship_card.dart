import 'package:flutter/material.dart';

class ScholarshipCard extends StatelessWidget {
  final String title;
  final String type;
  final String endDate;
  final String amount;
  final Color typeColor;
  final Color endDateColor;

  const ScholarshipCard({
    super.key,
    required this.title,
    required this.type,
    required this.endDate,
    required this.amount,
    required this.typeColor,
    required this.endDateColor,
  });

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
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black)),
          const SizedBox(height: 6),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: typeColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  type,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: endDateColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  'Fim: $endDate',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: endDateColor),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            amount,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 14),
          )
        ],
      ),
    );
  }
}