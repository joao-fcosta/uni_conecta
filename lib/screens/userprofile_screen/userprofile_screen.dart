import 'package:flutter/material.dart';
import '../../colors.dart';
import '../../ui/app_colors.dart';
import '../../widgets/bottom_navigation.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

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
                'Perfil do Usuário',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: purpleDark,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFFF8F8FF),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'https://randomuser.me/api/portraits/women/65.jpg'),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Maria Silva',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: purpleDark,
                      ),
                    ),
                    const Text(
                      'Ciência da Computação • 4º semestre',
                      style: TextStyle(color: purple),
                    ),
                    const SizedBox(height: 8),
                    const Row(
                      children: [
                        Icon(Icons.email, size: 16, color: Colors.grey),
                        SizedBox(width: 6),
                        Text('maria.silva@univmail.com'),
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(Icons.phone, size: 16, color: Colors.grey),
                        SizedBox(width: 6),
                        Text('(11) 98765-4321'),
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(Icons.badge, size: 16, color: Colors.grey),
                        SizedBox(width: 6),
                        Text('Matrícula: 20210012345'),
                      ],
                    ),
                    const SizedBox(height: 12),
                    OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.edit, color: purple),
                      label: const Text(
                        'Editar Perfil',
                        style: TextStyle(color: purple),
                      ),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: purple),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Row(
                children: [
                  Icon(Icons.history, color: purple),
                  SizedBox(width: 8),
                  Text(
                    'Histórico de Mentorias',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: AppColors.azul,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF9F7FF),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: DataTable(
                  columns: const [
                    DataColumn(label: Text('MENTOR')),
                    DataColumn(label: Text('DATA')),
                    DataColumn(label: Text('TÓPICO')),
                  ],
                  rows: const [
                    DataRow(cells: [
                      DataCell(Text('Pedro Almeida')),
                      DataCell(Text('10/05/2023')),
                      DataCell(Text('Estruturas de Dados')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Ana Pereira')),
                      DataCell(Text('22/04/2023')),
                      DataCell(Text('Banco de Dados')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Pedro Almeida')),
                      DataCell(Text('15/03/2023')),
                      DataCell(Text('Algoritmos')),
                    ]),
                  ],
                  headingRowColor:
                  MaterialStateProperty.all<Color>(Color(0xFFE8DBFF)),
                  dataRowColor:
                  MaterialStateProperty.all<Color>(Colors.white),
                  columnSpacing: 12,
                ),
              ),
              const SizedBox(height: 24),
              const Row(
                children: [
                  Icon(Icons.notifications, color: purple),
                  SizedBox(width: 8),
                  Text(
                    'Preferências de Notificação',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: purpleDark,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Column(
                children: [
                  _buildSwitchTile('Novas bolsas disponíveis', true),
                  _buildSwitchTile('Lembretes de prazos', true),
                  _buildSwitchTile('Alterações em aulas', true),
                  _buildSwitchTile('Mensagens de mentores', true),
                  _buildSwitchTile('Notícias da universidade', false),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSwitchTile(String title, bool value) {
    return SwitchListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      title: Text(title),
      value: value,
      onChanged: (_) {},
      activeColor: purple,
    );
  }
}
