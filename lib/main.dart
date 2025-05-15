import 'package:flutter/material.dart';
import 'screens/home_screen/home_screen.dart';
import 'screens/map_screen/map_screen.dart';
import 'screens/mentoring_screen/mentoring_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/map': (context) => const MapScreen(),
        '/mentoring': (context) => const MentoringScreen()
      },
    );
  }
}
