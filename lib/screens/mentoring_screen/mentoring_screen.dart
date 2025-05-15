import 'package:flutter/material.dart';
import '../../colors.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/mentor_card.dart';

class MentoringScreen extends StatelessWidget {
  const MentoringScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const BottomNavigation(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Área de Mentorias',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: purpleDark,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Minhas Mentorias',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: purpleDark,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Text('Ver todas', style: TextStyle(color: purple)),
                        Icon(Icons.arrow_forward, size: 16, color: purple),
                      ],
                    ),
                  ),
                ],
              ),
              // Card com mentor atual
              Container(
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.only(bottom: 24),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(
                        radius: 24,
                        backgroundImage: NetworkImage(
                          'https://randomuser.me/api/portraits/men/48.jpg',
                        ),
                      ),
                      title: Text('Pedro Almeida',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text(
                        'Ciência da Computação • 10º semestre\nExpertise: Algoritmos, Estrutura de Dados',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Color(0xFFBBDEFB),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text('Próxima sessão: 12/06/2023, 14:00'),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},
                            child: const Text('Reagendar'),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: purple,
                              foregroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            child: const Text('Iniciar Chat'),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),

              const Text(
                'Encontre um Mentor',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: purpleDark,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Conecte-se com estudantes mais experientes para receber orientação acadêmica e dicas para sua trajetória universitária.',
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Pesquisar por nome ou expertise...',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                ),
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField<String>(
                items: const [
                  DropdownMenuItem(value: 'todos', child: Text('Todos os cursos')),
                  DropdownMenuItem(value: 'comp', child: Text('Computação')),
                  DropdownMenuItem(value: 'psico', child: Text('Psicologia')),
                ],
                onChanged: (value) {},
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.filter_list),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                ),
              ),
              const SizedBox(height: 24),

              // Lista de mentor cards
              const MentorCard(
                imageUrl: 'https://randomuser.me/api/portraits/women/44.jpg',
                name: 'Ana Silva',
                course: 'Engenharia de Computação',
                semester: '8º semestre',
                expertise: ['Programação', 'Cálculo'],
                backgroundColor: Colors.white,
              ),
              const MentorCard(
                imageUrl: 'https://randomuser.me/api/portraits/men/46.jpg',
                name: 'Carlos Santos',
                course: 'Administração',
                semester: '6º semestre',
                expertise: ['Finanças', 'Marketing'],
                backgroundColor: Colors.white,
              ),
              const MentorCard(
                imageUrl: 'https://randomuser.me/api/portraits/women/47.jpg',
                name: 'Mariana Costa',
                course: 'Psicologia',
                semester: '7º semestre',
                expertise: ['Psicologia Social', 'Neurociência'],
                backgroundColor: Colors.white,
              ),
              const MentorCard(
                imageUrl: 'https://randomuser.me/api/portraits/men/49.jpg',
                name: 'Eduardo Oliveira',
                course: 'Engenharia de Computação',
                semester: '9º semestre',
                expertise: ['Banco de Dados', 'Redes'],
                backgroundColor: Colors.white,
              ),
              const MentorCard(
                imageUrl: 'https://randomuser.me/api/portraits/women/45.jpg',
                name: 'Juliana Mendes',
                course: 'Direito',
                semester: '8º semestre',
                expertise: ['Direito Civil', 'Penal'],
                backgroundColor: Colors.white,
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
