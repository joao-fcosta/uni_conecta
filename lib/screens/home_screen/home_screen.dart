import 'package:flutter/material.dart';
import '../../colors.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/class_card.dart';
import '../../widgets/header.dart';
import '../../widgets/mentor_card.dart';
import '../../widgets/quick_access_item.dart';
import '../../widgets/scholarship_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              const Header(),
              const SizedBox(height: 24),
              const Text(
                'Acesso Rápido',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: purpleDark,
                ),
              ),
              const SizedBox(height: 16),

                // Container com altura para GridView
              LayoutBuilder(
                builder: (context, constraints) {
                  // Defina altura da grid para caber todos os itens 3 por linha
                  // Exemplo: cada item com altura ~120, 2 linhas (6 itens) = 240 + espaçamento
                  double gridHeight = 260;

                  return SizedBox(
                    height: gridHeight,
                    child: GridView.count(
                      crossAxisCount: 3, // 3 colunas
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      physics: const NeverScrollableScrollPhysics(), // evita rolagem interna
                      children: [
                       QuickAccessItem(
                          icon: Icons.card_giftcard,
                          label: 'Bolsas e Auxílios',
                          bgColor: Color(0xFFD7CBFF),
                         onTap: () {
                           Navigator.pushNamed(context, '/scholarship');
                         },
                        ),
                        QuickAccessItem(
                          icon: Icons.group,
                          label: 'Mentorias',
                          bgColor: Color(0xFFCEE1FF),
                          onTap: () {
                            Navigator.pushNamed(context, '/mentoring');
                          },
                        ),
                        QuickAccessItem(
                          icon: Icons.location_on,
                          label: 'Mapa',
                          bgColor: Color(0xFFD2F7D1),
                          onTap: () {
                            Navigator.pushNamed(context, '/map');
                          },
                        ),
                        const QuickAccessItem(
                          icon: Icons.calendar_today,
                          label: 'Horários',
                          bgColor: Color(0xFFFFF9DB),
                        ),
                        const QuickAccessItem(
                          icon: Icons.menu_book,
                          label: 'Regulamentos',
                          bgColor: Color(0xFFCEE1FF),
                        ),
                        const QuickAccessItem(
                          icon: Icons.description,
                          label: 'Trabalhos',
                          bgColor: Color(0xFFFFDCDC),
                        ),
                      ],
                    ),
                  );
                },
              ),

              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Aulas de Hoje',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: purpleDark),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Text(
                          'Ver todas',
                          style: TextStyle(color: purple),
                        ),
                        Icon(Icons.arrow_forward, size: 16, color: purple),
                      ],
                    ),
                  )
                ],
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  double maxWidth = constraints.maxWidth;
                  // Define largura do card dependendo da largura disponível:
                  double cardWidth = maxWidth < 400 ? maxWidth : (maxWidth / 2) - 12;
                  return Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: [
                      SizedBox(
                        width: cardWidth,
                        child: const ClassCard(
                          title: 'Matemática Discreta',
                          location: 'Bloco A, Sala 202',
                          time: '10:00 - 11:40',
                        ),
                      ),
                      SizedBox(
                        width: cardWidth,
                        child: const ClassCard(
                          title: 'Algoritmos',
                          location: 'Bloco C, Sala 305',
                          time: '14:00 - 15:40',
                        ),
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Bolsas com Inscrições Abertas',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: purpleDark),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Text(
                          'Ver todas',
                          style: TextStyle(color: purple),
                        ),
                        Icon(Icons.arrow_forward, size: 16, color: purple),
                      ],
                    ),
                  )
                ],
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  double maxWidth = constraints.maxWidth;
                  double cardWidth = maxWidth < 400 ? maxWidth : (maxWidth / 2) - 12;
                  return Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: [
                      SizedBox(
                        width: cardWidth,
                        child: const ScholarshipCard(
                          title: 'Bolsa de Iniciação Científica',
                          type: 'Pesquisa',
                          endDate: '14/06/2023',
                          amount: 'R\$ 400,00',
                          typeColor: Color(0xFFB2CFFF),
                          endDateColor: Colors.red,
                        ),
                      ),
                      SizedBox(
                        width: cardWidth,
                        child: const ScholarshipCard(
                          title: 'Auxílio Permanência',
                          type: 'Assistência',
                          endDate: '09/06/2023',
                          amount: 'R\$ 300,00',
                          typeColor: Color(0xFFCFF3CE),
                          endDateColor: Colors.red,
                        ),
                      ),
                    ],
                  );
                },
              ),

              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Mentores Disponíveis',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: purpleDark),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Text(
                          'Ver todos',
                          style: TextStyle(color: purple),
                        ),
                        Icon(Icons.arrow_forward, size: 16, color: purple),
                      ],
                    ),
                  )
                ],
              ),
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
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
