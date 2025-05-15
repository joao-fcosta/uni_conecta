import 'package:flutter/material.dart';
import '../ui/app_colors.dart';

void main() => runApp(UniConectaApp());

class UniConectaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: PerfilPage(), debugShowCheckedModeBanner: false);
  }
}

class PerfilPage extends StatefulWidget {
  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  // Estados das notificações
  bool bolsas = true;
  bool lembretes = true;
  bool alteracoes = true;
  bool mensagens = true;
  bool noticias = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: AppColors.azul,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Bolsas\ne Auxílios',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Mentorias'),
          BottomNavigationBarItem(icon: Icon(Icons.location_on), label: 'Mapa'),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Horários',
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Text(
              'Perfil do Usuário',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                      'assets/profile.jpg',
                    ), // Substitua pela sua imagem
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Maria Silva',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text('Ciência da Computação • 4º semestre'),
                  const SizedBox(height: 12),
                  Column(
                    children: const [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Icon(Icons.email, color: AppColors.azul),
                        title: Text('maria.silva@univmail.com'),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Icon(Icons.phone, color: AppColors.azul),
                        title: Text('(11) 98765-4321'),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Icon(Icons.badge, color: AppColors.azul),
                        title: Text('Matrícula: 20210012345'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: BorderSide(color: AppColors.azul),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {},
                    icon: Icon(Icons.settings, color: AppColors.azul),
                    label: Text(
                      'Editar Perfil',
                      style: TextStyle(color: AppColors.azul),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Histórico de Mentorias',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.azul,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: DataTable(
                headingRowColor: MaterialStateColor.resolveWith(
                  (states) => AppColors.azulClaro,
                ),
                columns: const [
                  DataColumn(label: Text('Mentor')),
                  DataColumn(label: Text('Data')),
                  DataColumn(label: Text('Tópico')),
                ],
                rows: const [
                  DataRow(
                    cells: [
                      DataCell(Text('Pedro Almeida')),
                      DataCell(Text('10/05/2023')),
                      DataCell(Text('Estruturas')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('Ana Pereira')),
                      DataCell(Text('22/04/2023')),
                      DataCell(Text('Banco de Dados')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('Pedro Almeida')),
                      DataCell(Text('15/03/2023')),
                      DataCell(Text('Algoritmos')),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Preferências de Notificação',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.azul,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Gerencie quais notificações você deseja receber do UniConecta.',
              style: TextStyle(color: AppColors.preto),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.branco,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  SwitchListTile(
                    title: Text('Novas bolsas disponíveis'),
                    secondary: Icon(
                      Icons.workspace_premium,
                      color: AppColors.azul,
                    ),
                    value: bolsas,
                    onChanged: (val) => setState(() => bolsas = val),
                  ),
                  SwitchListTile(
                    title: Text('Lembretes de prazos'),
                    secondary: Icon(Icons.calendar_today, color: AppColors.azul),
                    value: lembretes,
                    onChanged: (val) => setState(() => lembretes = val),
                  ),
                  SwitchListTile(
                    title: Text('Alterações em aulas'),
                    secondary: Icon(Icons.school, color: AppColors.azul),
                    value: alteracoes,
                    onChanged: (val) => setState(() => alteracoes = val),
                  ),
                  SwitchListTile(
                    title: Text('Mensagens de mentores'),
                    secondary: Icon(Icons.message, color: AppColors.azul),
                    value: mensagens,
                    onChanged: (val) => setState(() => mensagens = val),
                  ),
                  SwitchListTile(
                    title: Text('Notícias da universidade'),
                    secondary: Icon(Icons.newspaper, color: AppColors.azul),
                    value: noticias,
                    onChanged: (val) => setState(() => noticias = val),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}