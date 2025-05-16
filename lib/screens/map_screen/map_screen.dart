import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../../colors.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/categoryChip.dart';
import '../../widgets/map_placeholder.dart';
import '../../widgets/place_card.dart';


class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

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
                'Mapa da Universidade',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: purpleDark,
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Buscar locais no campus...',
                  prefixIcon: const Icon(Icons.search),
                  contentPadding: const EdgeInsets.symmetric(vertical: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              LayoutBuilder(
                builder: (context, constraints) {
                  // Defina o número de itens por linha desejado
                  int crossAxisCount = 4;

                  // Espaçamento entre os itens (igual ao seu spacing do Wrap)
                  double spacing = 12;

                  // Calcule a largura máxima que cada chip pode ocupar
                  double maxItemWidth =
                      (constraints.maxWidth - (spacing * (crossAxisCount - 1))) / crossAxisCount;

                  return Wrap(
                    spacing: spacing,
                    runSpacing: spacing,
                    children: const [
                      CategoryChip(icon: LucideIcons.bookOpen, label: 'Salas de Aula'),
                      CategoryChip(icon: LucideIcons.building2, label: 'Administrativo'),
                      CategoryChip(icon: LucideIcons.coffee, label: 'Alimentação'),
                      CategoryChip(icon: LucideIcons.bus, label: 'Transporte'),
                    ].map((chip) {
                      return SizedBox(
                        width: maxItemWidth,
                        child: AspectRatio(
                          aspectRatio: 1.0,
                          child: chip,
                        ),
                      );
                    }).toList(),
                  );
                },
              ),
              const SizedBox(height: 24),
              MapPlaceholder(),
              const SizedBox(height: 24),
              const Text(
                'Locais no Campus',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: purpleDark,
                ),
              ),
              const SizedBox(height: 16),
              const PlaceCard(
                title: 'Bloco A - Engenharia',
                category: 'Salas de Aula',
              ),
              const PlaceCard(
                title: 'Bloco B - Humanidades',
                category: 'Salas de Aula',
              ),
              const PlaceCard(
                title: 'Bloco C - Ciências',
                category: 'Salas de Aula',
              ),
              const PlaceCard(
                title: 'Biblioteca Central',
                category: 'Administrativo',
              ),
              const PlaceCard(
                title: 'Restaurante Universitário',
                category: 'Alimentação',
              ),
              const PlaceCard(
                title: 'Ponto de Ônibus',
                category: 'Transporte',
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}







