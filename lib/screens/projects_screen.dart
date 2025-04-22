import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const Text(
          '🚀 Proyectos Destacados',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 30),

        _buildProjectBlock(
          title: '📱 Aplicación de Gestión de Tareas',
          description:
          'Desarrollada en Flutter y Firebase.\nPermite crear, editar y eliminar tareas con sincronización en tiempo real y autenticación de usuarios.',
        ),

        _buildProjectBlock(
          title: '🌐 Landing Page para Monchis Media',
          description:
          'Sitio web responsivo diseñado con HTML, CSS y JavaScript, enfocado en captar clientes potenciales.',
        ),

        _buildProjectBlock(
          title: '🔐 API REST con Node.js',
          description:
          'API creada con Express y MySQL para gestionar usuarios y autenticación segura.',
        ),

        const SizedBox(height: 40),

        Center(
          child: SvgPicture.asset(
            'assets/images/undraw_visionary-technology_6ouq.svg',
            height: 260,
            width: screenWidth * 0.85,
            semanticsLabel: 'Ilustración de proyectos',
          ),
        ),
      ],
    );
  }

  Widget _buildProjectBlock({
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.indigo,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            textAlign: TextAlign.justify,
            style: const TextStyle(fontSize: 16, height: 1.6),
          ),
        ],
      ),
    );
  }
}
