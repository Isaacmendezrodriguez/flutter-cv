import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      children: [
        const Text(
          '👨‍💻 Sobre Mí',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Color(0xFF0D47A1),
          ),
        ),
        const SizedBox(height: 20),

        const Text(
          'Estudiante de Ingeniería en Informática con sólida formación en desarrollo de aplicaciones multiplataforma y desarrollo web.',
          textAlign: TextAlign.justify,
          style: TextStyle(fontSize: 16, height: 1.6, color: Color(0xFF263238)),
        ),
        const SizedBox(height: 12),
        const Text(
          'Experiencia en proyectos que integran tecnologías como Flutter, Java y C, así como en la gestión de bases de datos.',
          textAlign: TextAlign.justify,
          style: TextStyle(fontSize: 16, height: 1.6, color: Color(0xFF263238)),
        ),
        const SizedBox(height: 12),
        const Text(
          'Apasionado por la creación de soluciones tecnológicas innovadoras y con habilidades destacadas en trabajo en equipo y comunicación efectiva.',
          textAlign: TextAlign.justify,
          style: TextStyle(fontSize: 16, height: 1.6, color: Color(0xFF263238)),
        ),
        const SizedBox(height: 12),
        const Text(
          'Busco una oportunidad como becario para aplicar y expandir mis conocimientos en un entorno profesional.',
          textAlign: TextAlign.justify,
          style: TextStyle(fontSize: 16, height: 1.6, color: Color(0xFF263238)),
        ),

        const SizedBox(height: 30),

        Center(
          child: SvgPicture.asset(
            'assets/images/undraw_web-developer_ggt0.svg',
            height: 250,
            width: screenWidth * 0.85,
            semanticsLabel: 'Ilustración desarrollador web',
          ),
        ),
      ],
    );
  }
}


