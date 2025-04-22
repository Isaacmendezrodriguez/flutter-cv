import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/education_screen.dart';
import 'screens/skills_screen.dart';
import 'screens/projects_screen.dart';
import 'screens/contact_screen.dart';

void main() => runApp(const PortfolioApp());

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portafolio Isaac',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5F8FB),
        primaryColor: const Color(0xFF0D47A1),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xFF42A5F5),
        ),
        useMaterial3: true,
      ),
      home: const MainNavigation(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    EducationScreen(),
    SkillsScreen(),
    ProjectsScreen(),
    ContactScreen(),
  ];

  final List<IconData> _icons = [
    Icons.home_rounded,
    Icons.school_rounded,
    Icons.psychology_alt_rounded,
    Icons.work_rounded,
    Icons.mail_rounded,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20), // Puedes ajustar el valor
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 350),
            transitionBuilder: (child, animation) {
              return FadeTransition(opacity: animation, child: child);
            },
            child: _screens[_currentIndex],
          ),
        ),
      ),

      bottomNavigationBar: NavigationBar(
        height: 65,
        selectedIndex: _currentIndex,
        indicatorColor: Theme.of(context).primaryColor.withOpacity(0.1),
        onDestinationSelected: (index) => setState(() => _currentIndex = index),
        destinations: [
          for (int i = 0; i < _icons.length; i++)
            NavigationDestination(
              icon: Icon(_icons[i]),
              label: '',
            )
        ],
      ),
    );
  }
}

