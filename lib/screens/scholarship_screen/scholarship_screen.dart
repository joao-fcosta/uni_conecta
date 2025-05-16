import 'package:flutter/material.dart';
import '../../colors.dart';
import '../../widgets/bottom_navigation.dart';

class ScholarshipScreen extends StatelessWidget {
  const ScholarshipScreen({super.key});

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
                'Central de Bolsas e Auxílios',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: purpleDark,
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  hintText: '🔍 Pesquisar bolsas...',
                  filled: true,
                  fillColor: Color(0xFFF6F6F6),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
              const SizedBox(height: 12),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFF6F6F6),
                  foregroundColor: Colors.black87,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                icon: const Icon(Icons.filter_alt_outlined),
                label: const Text("Todos os tipos"),
              ),
              const SizedBox(height: 24),

              // Informativo
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF6F6F6),
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Sobre as bolsas e auxílios',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: purpleDark,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'A Central de Bolsas e Auxílios oferece suporte financeiro a estudantes através de diversos programas...',
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFE3DAFF),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: const Text(
                        'Dica: Mantenha seus documentos atualizados para agilizar o processo de candidatura.',
                        style: TextStyle(color: purpleDark),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Lista de bolsas (cards)
              _buildScholarshipCard(
                title: 'Bolsa de Iniciação Científica',
                type: 'Pesquisa',
                typeColor: Color(0xFFB2CFFF),
                endDate: '14/06/2023',
                amount: 'R\$ 400,00',
              ),
              _buildScholarshipCard(
                title: 'Auxílio Permanência',
                type: 'Assistência',
                typeColor: Color(0xFFCFF3CE),
                endDate: '09/06/2023',
                amount: 'R\$ 300,00',
              ),
              _buildScholarshipCard(
                title: 'Monitoria em Cálculo I',
                type: 'Monitoria',
                typeColor: Color(0xFFFFE6A6),
                endDate: '04/07/2023',
                amount: 'R\$ 350,00',
              ),
              _buildScholarshipCard(
                title: 'Programa de Extensão Comunitária',
                type: 'Extensão',
                typeColor: Color(0xFFD9D3FF),
                endDate: '19/07/2023',
                amount: 'R\$ 450,00',
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildScholarshipCard({
    required String title,
    required String type,
    required Color typeColor,
    required String endDate,
    required String amount,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(color: Color(0x11000000), blurRadius: 4, offset: Offset(0, 2))
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: purpleDark,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: typeColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  type,
                  style: const TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            '📅 Encerra em: $endDate',
            style: const TextStyle(color: Colors.red, fontSize: 13),
          ),
          const SizedBox(height: 4),
          Text(
            amount,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 12),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor: purple,
              side: const BorderSide(color: purple),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {},
            child: const Text('Ver detalhes'),
          )
        ],
      ),
    );
  }
}
