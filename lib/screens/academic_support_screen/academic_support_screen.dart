import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../../colors.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/template_card.dart';

class AcademicSupportScreen extends StatelessWidget {
  const AcademicSupportScreen({super.key});

  final List<TemplateItem> templates = const [
    TemplateItem(
      title: 'Modelo para TCC',
      description: 'Template formatado com normas ABNT',
      tag: 'Trabalho de Conclusão',
      downloads: 1250,
    ),
    TemplateItem(
      title: 'Template para Artigo Científico',
      description: 'Modelo para artigos e publicações',
      tag: 'Artigos',
      downloads: 980,
    ),
    TemplateItem(
      title: 'Modelo de Relatório de Estágio',
      description: 'Estrutura para relatórios de estágio',
      tag: 'Estágios',
      downloads: 756,
    ),
    TemplateItem(
      title: 'Template para Apresentações',
      description: 'Slides com identidade visual da universidade',
      tag: 'Apresentações',
      downloads: 1134,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const BottomNavigation(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Apoio Acadêmico',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: purpleDark, // da sua paleta
          ),
        ),
        iconTheme: const IconThemeData(color: purpleDark),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Campo de pesquisa
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(LucideIcons.search, color: purpleDark),
                hintText: 'Pesquisar recursos...',
                filled: true,
                fillColor: const Color(0xFFF8F8FF),
                contentPadding:
                const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
              ),
              style: const TextStyle(color: purpleDark),
            ),
            const SizedBox(height: 24),
            Row(
              children: const [
                Icon(LucideIcons.fileText, color: purpleDark),
                SizedBox(width: 8),
                Text(
                  'Templates e Modelos',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: purpleDark,

                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: templates.length,
                itemBuilder: (context, index) {
                  final template = templates[index];
                  return TemplateCard(template: template, backgroundColor: Colors.white,);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TemplateItem {
  final String title;
  final String description;
  final String tag;
  final int downloads;

  const TemplateItem({
    required this.title,
    required this.description,
    required this.tag,
    required this.downloads,
  });
}

