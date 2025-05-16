import 'package:flutter/material.dart';
import '../../colors.dart';
import '../../widgets/bottom_navigation.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final weekDays = [
      'DOM.', 'SEG.', 'TER.', 'QUA.', 'QUI.', 'SEX.', 'SÁB.'
    ];
    final today = DateTime.now();
    final currentDayIndex = today.weekday % 7;

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
                'Horários e Salas de Aula',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: purpleDark,
                ),
              ),
              const SizedBox(height: 16),

              // Seletor de dias da semana
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.chevron_left, color: purpleDark),
                  const Text(
                    'maio de 2025',
                    style: TextStyle(color: purpleDark),
                  ),
                  Icon(Icons.chevron_right, color: purpleDark),
                ],
              ),
              const SizedBox(height: 8),

              SizedBox(
                height: 60,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    final isSelected = index == currentDayIndex;
                    final dayDate = today.subtract(Duration(days: currentDayIndex - index));
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      padding: const EdgeInsets.all(8),
                      width: 60,
                      decoration: BoxDecoration(
                        color: isSelected ? purple : Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            weekDays[index],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: isSelected ? Colors.white : Colors.black,
                            ),
                          ),
                          Text(
                            '${dayDate.day}',
                            style: TextStyle(
                              color: isSelected ? Colors.white : Colors.black,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 24),
              const Text(
                'Aulas de Hoje',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: purpleDark,
                ),
              ),
              const SizedBox(height: 12),

              // Card da aula
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 6,
                      offset: const Offset(0, 2),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Inteligência Artificial',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: purpleDark,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Container(
                      height: 8,
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        color: purple.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: FractionallySizedBox(
                        widthFactor: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: purple,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                    ),
                    const Row(
                      children: [
                        Icon(Icons.location_on, size: 16, color: purpleDark),
                        SizedBox(width: 4),
                        Text('Laboratório 1'),
                      ],
                    ),
                    const SizedBox(height: 4),
                    const Row(
                      children: [
                        Icon(Icons.access_time, size: 16, color: purpleDark),
                        SizedBox(width: 4),
                        Text('10:00 - 11:40'),
                      ],
                    ),
                    const SizedBox(height: 4),
                    const Text('Professor: Dra. Fernanda Lima'),
                  ],
                ),
              ),

              const SizedBox(height: 24),
              const Text(
                'Visão Geral da Semana',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: purpleDark,
                ),
              ),
              const SizedBox(height: 12),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xFFF5EFFF),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: const Row(
                  children: [
                    Expanded(
                      child: Text(
                        'DIA',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'DISCIPLINA',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              ...[
                ['Terça-Feira', 'Matemática Discreta'],
                ['Terça-Feira', 'Algoritmos'],
                ['Quarta-Feira', 'Banco de Dados'],
                ['Quinta-Feira', 'Linguagens de Programação'],
                ['Quinta-Feira', 'Estruturas de Dados'],
                ['Sexta-Feira', 'Engenharia de Software'],
                ['Sábado', 'Inteligência Artificial'],
              ].map((item) {
                return Container(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Color(0xFFE0E0E0)),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(child: Text(item[0])),
                      Expanded(child: Text(item[1])),
                    ],
                  ),
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
