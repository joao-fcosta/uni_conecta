import 'package:flutter/material.dart';
import '../../colors.dart';
import '../../widgets/bottom_navigation.dart';

class RegulationsScreen extends StatelessWidget {
  const RegulationsScreen({super.key});

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
                'Regulamentos e Documentos',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: purpleDark,
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Pesquisar documentos...',
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Row(
                children: [
                  Icon(Icons.folder, color: purple),
                  SizedBox(width: 8),
                  Text(
                    'Documentos Importantes',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: purple,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              ..._documents.map((doc) => _buildDocumentCard(doc)).toList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDocumentCard(Map<String, String> doc) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.02),
            blurRadius: 4,
            offset: const Offset(0, 2),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.description, color: purple, size: 32),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doc['title']!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: purpleDark,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      doc['subtitle']!,
                      style: const TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('PDF • ${doc['size']}', style: const TextStyle(color: Colors.black54)),
              Text('Atualizado em ${doc['updated']}', style: const TextStyle(color: Colors.black54)),
            ],
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              icon: const Icon(Icons.download, color: purple),
              label: const Text(
                'Download',
                style: TextStyle(color: purple),
              ),
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: purple),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

const List<Map<String, String>> _documents = [
  {
    'title': 'Manual do Aluno',
    'subtitle': 'Guia completo com direitos e deveres dos estudantes',
    'size': '2.4 MB',
    'updated': '15/03/2023'
  },
  {
    'title': 'Regulamento Acadêmico',
    'subtitle': 'Normas e procedimentos acadêmicos da universidade',
    'size': '3.1 MB',
    'updated': '10/01/2023'
  },
  {
    'title': 'Calendário Acadêmico 2023',
    'subtitle': 'Datas importantes do ano letivo',
    'size': '1.2 MB',
    'updated': '05/12/2022'
  },
  {
    'title': 'Regimento de Bolsas e Auxílios',
    'subtitle': 'Normas para concessão e manutenção de bolsas',
    'size': '2.8 MB',
    'updated': '20/02/2023'
  },
  {
    'title': 'Manual da Biblioteca',
    'subtitle': 'Regras de utilização e empréstimo de livros',
    'size': '1.5 MB',
    'updated': '08/03/2023'
  },
];
