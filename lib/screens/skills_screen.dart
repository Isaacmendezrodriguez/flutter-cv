import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      children: [
        const Text(
          '👨‍💻 Habilidades Técnicas',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Color(0xFF0D47A1),
          ),
        ),
        const SizedBox(height: 20),

        _buildSubtitle('Lenguajes de Programación:'),
        _buildJustifiedList([
          'HTML, CSS, JavaScript, ReactJS',
          'PHP, Java, C',
          'Dart (Flutter)',
        ], highlight: true),

        _buildSubtitle('Frameworks y Herramientas:'),
        _buildJustifiedList(['Flutter', 'Node.js', 'Bootstrap'], highlight: true),

        _buildSubtitle('Bases de Datos:'),
        _buildJustifiedList(['SQL Server', 'MySQL', 'Firebase'], highlight: true),

        _buildSubtitle('Diseño y Prototipado:'),
        _buildJustifiedList(['Figma'], highlight: true),

        _buildSubtitle('Control de Versiones:'),
        _buildJustifiedList(['Git', 'GitHub'], highlight: true),

        _buildSubtitle('Metodologías Ágiles:'),
        _buildJustifiedList(['Scrum', 'Agile'], highlight: true),

        const SizedBox(height: 30),
        Center(
          child: SvgPicture.asset(
            'assets/images/undraw_code-typing_laf4.svg',
            height: 250,
            width: screenWidth * 0.85,
            semanticsLabel: 'Ilustración habilidades técnicas',
          ),
        ),

        const SizedBox(height: 40),
        const Text(
          '🧠 Habilidades Blandas',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Color(0xFF0D47A1),
          ),
        ),
        const SizedBox(height: 20),

        _buildJustifiedList([
          'Trabajo en equipo y colaboración',
          'Comunicación efectiva',
          'Resolución de conflictos',
          'Adaptabilidad',
          'Aprendizaje continuo',
        ]),

        const SizedBox(height: 30),
        Center(
          child: SvgPicture.asset(
            'assets/images/undraw_work-friends_g4mn.svg',
            height: 250,
            width: screenWidth * 0.85,
            semanticsLabel: 'Ilustración habilidades blandas',
          ),
        ),
      ],
    );
  }

  Widget _buildSubtitle(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 6),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 18,
          color: Colors.indigo,
        ),
      ),
    );
  }

  Widget _buildJustifiedList(List<String> items, {bool highlight = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: items
          .map(
            (item) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: Text(
            '• $item',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16,
              height: 1.5,
              color: highlight ? const Color(0xFF1565C0) : Colors.black87,
              fontWeight: highlight ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
        ),
      )
          .toList(),
    );
  }
}
