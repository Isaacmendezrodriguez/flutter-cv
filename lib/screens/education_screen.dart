import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      children: [
        const Text(
          '🎓 Educación',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Color(0xFF0D47A1),
          ),
        ),
        const SizedBox(height: 24),

        const Text(
          'Unidad Profesional Interdisciplinaria de Ingeniería y Ciencias Sociales y Administrativas (UPIICSA), IPN',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.indigo,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          '📍 Ciudad de México, México — Actualmente en 6º semestre',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        ),

        const SizedBox(height: 30),

        const Text(
          '📜 Cursos Relevantes',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(height: 14),
        const Text(
          '- Desarrollo de Aplicaciones Móviles\n'
              '- Programación Orientada a Objetos\n'
              '- Bases de Datos Avanzadas',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, height: 1.6),
        ),

        const SizedBox(height: 30),

        const Text(
          '✍🏻 Proyectos Destacados',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(height: 14),
        const Text(
          '• App con Flutter y Firebase para gestión de tareas, autenticación y sincronización en tiempo real.\n\n'
              '• Sistema CRUD con PHP y SQL Server para gestión de inventarios con Bootstrap y CSS avanzado.',
          textAlign: TextAlign.justify,
          style: TextStyle(fontSize: 16, height: 1.6),
        ),

        const SizedBox(height: 40),

        Center(
          child: SvgPicture.asset(
            'assets/images/undraw_education_3vwh.svg',
            height: 250,
            width: screenWidth * 0.85,
            semanticsLabel: 'Ilustración de educación',
          ),
        ),
      ],
    );
  }
}

