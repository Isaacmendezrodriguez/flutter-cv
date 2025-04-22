import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'No se pudo abrir: $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      children: [
        const Text(
          '📬 ¡Conecta conmigo!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Color(0xFF0D47A1),
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          '¿Te interesa colaborar en un proyecto, contratarme o simplemente saludar? 😊\n\nPuedes contactarme en cualquiera de estas plataformas:',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            height: 1.6,
            color: Color(0xFF263238),
          ),
        ),
        const SizedBox(height: 30),

        // Íconos adaptables
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 32,
          runSpacing: 16,
          children: [
            _buildIcon(
              path: 'assets/icons/gmail.png',
              url: 'mailto:mendezrodriguezisaac4@gmail.com',
              size: screenWidth * 0.17,
            ),
            _buildIcon(
              path: 'assets/icons/github-mark.png',
              url: 'https://github.com/Isaacmendezrodriguez',
              size: screenWidth * 0.17,
            ),
            _buildIcon(
              path: 'assets/icons/LI-In-Bug.png',
              url: 'https://www.linkedin.com/in/isaac-mendez-rodriguez-2b4480357/',
              size: screenWidth * 0.17,
            ),
          ],
        ),

        const SizedBox(height: 40),

        // Ilustración SVG
        Center(
          child: SvgPicture.asset(
            'assets/images/undraw_contact-us_kcoa.svg',
            height: 260,
            width: screenWidth * 0.85,
            semanticsLabel: 'Ilustración de contacto',
          ),
        ),
      ],
    );
  }

  Widget _buildIcon({required String path, required String url, required double size}) {
    return InkWell(
      onTap: () => _launchURL(url),
      borderRadius: BorderRadius.circular(size / 2),
      child: Image.asset(
        path,
        width: size,
        height: size,
      ),
    );
  }
}

