import 'package:flutter/material.dart';
import 'screens/academic_support_screen/academic_support_screen.dart';
import 'screens/scholarship_screen/scholarship_screen.dart';
import 'screens/home_screen/home_screen.dart';
import 'screens/map_screen/map_screen.dart';
import 'screens/mentoring_screen/mentoring_screen.dart';
import 'screens/schedule_screen/schedule_screen.dart';
import 'screens/regulations_screen/regulations_screen.dart';
import 'screens/userprofile_screen/userprofile_screen.dart';


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
        '/mentoring': (context) => const MentoringScreen(),
        '/scholarship': (context) => const ScholarshipScreen(),
        '/schedule': (context) => const ScheduleScreen(),
        '/regulations': (context) => const RegulationsScreen(),
        '/userprofile': (context) => const UserProfileScreen(),
        '/academic_support': (context) => const AcademicSupportScreen(),
      },
    );
  }
}
