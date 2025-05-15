import 'package:flutter/material.dart';
import '../colors.dart';

class MentorCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String course;
  final String semester;
  final List<String> expertise;

  const MentorCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.course,
    required this.semester,
    required this.expertise,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: purpleLight,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
            radius: 30,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black)),
                Text(course,
                    style:
                        const TextStyle(fontWeight: FontWeight.w600, color: Colors.black54)),
                Text(semester,
                    style:
                        const TextStyle(fontWeight: FontWeight.w600, color: Colors.black54)),
                Wrap(
                  spacing: 8,
                  children: expertise
                      .map((e) => Chip(
                            label: Text(e),
                            backgroundColor: purple,
                            labelStyle: const TextStyle(color: Colors.white),
                          ))
                      .toList(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
