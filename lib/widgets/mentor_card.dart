import 'package:flutter/material.dart';
import '../colors.dart';

class MentorCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String course;
  final String semester;
  final List<String> expertise;
  final dynamic backgroundColor;

  const MentorCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.course,
    required this.semester,
    required this.expertise,
    this.backgroundColor = purpleLight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Avatar
          CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
            radius: 32,
          ),
          const SizedBox(height: 12),

          // Nome
          Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          // Curso e semestre
          Text(
            '$course • $semester',
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black54,
            ),
          ),

          const SizedBox(height: 8),

          // Expertise
          RichText(
            text: TextSpan(
              text: 'Expertise: ',
              style: const TextStyle(
                color: purple,
                fontWeight: FontWeight.w500,
                fontSize: 13,
              ),
              children: [
                TextSpan(
                  text: expertise.join(', '),
                  style: const TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // Botões
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: purple,
                    side: BorderSide(color: purple),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                  child: const Text('Ver perfil'),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.chat_bubble_outline, size: 18),
                  label: const Text('Conversar'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: purple,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
