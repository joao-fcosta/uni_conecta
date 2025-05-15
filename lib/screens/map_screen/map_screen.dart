import 'package:flutter/material.dart';
import '../../colors.dart';
import '../../widgets/bottom_navigation.dart';


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
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: const [
                  _CategoryChip(
                    icon: Icons.menu_book,
                    label: 'Salas de Aula',
                  ),
                  _CategoryChip(
                    icon: Icons.apartment,
                    label: 'Administrativo',
                  ),
                  _CategoryChip(
                    icon: Icons.local_dining,
                    label: 'Alimentação',
                  ),
                  _CategoryChip(
                    icon: Icons.directions_bus,
                    label: 'Transporte',
                  ),
                ],
              ),
              const SizedBox(height: 24),
              _MapPlaceholder(),
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
              const _PlaceCard(
                title: 'Bloco A - Engenharia',
                category: 'Salas de Aula',
              ),
              const _PlaceCard(
                title: 'Bloco B - Humanidades',
                category: 'Salas de Aula',
              ),
              const _PlaceCard(
                title: 'Bloco C - Ciências',
                category: 'Salas de Aula',
              ),
              const _PlaceCard(
                title: 'Biblioteca Central',
                category: 'Administrativo',
                selected: true,
              ),
              const _PlaceCard(
                title: 'Restaurante Universitário',
                category: 'Alimentação',
              ),
              const _PlaceCard(
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

class _CategoryChip extends StatelessWidget {
  final IconData icon;
  final String label;

  const _CategoryChip({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: Icon(icon, color: purpleDark),
      label: Text(label),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Color(0xFFE0E0E0)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    );
  }
}

class _MapPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFEAEFFF),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on, color: purple, size: 40),
              SizedBox(height: 8),
              Text(
                'Mapa interativo do campus',
                style: TextStyle(
                  color: purple,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Use os controles para navegar ou selecione\num local da lista abaixo',
                textAlign: TextAlign.center,
                style: TextStyle(color: purple),
              ),
            ],
          ),
          Positioned(
            right: 12,
            child: Column(
              children: const [
                _DirectionButton(icon: Icons.arrow_upward),
                _DirectionButton(icon: Icons.arrow_back),
                _DirectionButton(icon: Icons.arrow_forward),
                _DirectionButton(icon: Icons.arrow_downward),
              ],
            ),
          ),
          const Positioned(
            bottom: 8,
            right: 8,
            child: Row(
              children: [
                Icon(Icons.zoom_out_map, color: purple),
                SizedBox(width: 4),
                Icon(Icons.fullscreen, color: purple),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DirectionButton extends StatelessWidget {
  final IconData icon;

  const _DirectionButton({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: IconButton(
        icon: Icon(icon, color: purple),
        onPressed: () {},
      ),
    );
  }
}

class _PlaceCard extends StatelessWidget {
  final String title;
  final String category;
  final bool selected;

  const _PlaceCard({
    required this.title,
    required this.category,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: selected ? purple.withOpacity(0.1) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color(0x11000000),
            blurRadius: 4,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Row(
        children: [
          const Icon(Icons.location_on, color: purple),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: purpleDark,
                ),
              ),
              Text(
                category,
                style: const TextStyle(color: purple),
              ),
            ],
          )
        ],
      ),
    );
  }
}
