import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/manufacturing_process_model.dart';

class ProcessViewTemplate extends StatelessWidget {
  final ManufacturingProcess process;

  ProcessViewTemplate({required this.process});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isDesktop(context)
          ? _buildDesktopView(context)
          : _buildMobileView(context),
    );
  }

  bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width > 600;
  }

  Widget _buildMobileView(BuildContext context) {
    // Implementación para dispositivos móviles
    return Container(
      color: Colors.white,
    );
  }

  Widget _buildDesktopView(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _leftPanel(context),
        ),
        Expanded(
          child: _rightPanel(context),
        ),
      ],
    );
  }

  Widget _leftPanel(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _backButton(context),
          _titleSection(context),
          Expanded(
            child: _imageSection(context),
          ),
        ],
      ),
    );
  }

  Widget _backButton(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: const Icon(
        Icons.keyboard_arrow_left,
        size: 36,
        color: Colors.black,
      ),
    );
  }

  Widget _titleSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${process.processName} (${process.processNameInEnglish})",
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            "Categoría: ${process.categories.join(", ")}",
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          _videoButton(context),
        ],
      ),
    );
  }

  Widget _videoButton(BuildContext context) {
    return GestureDetector(
      onTap: () => _launchURL(process.videoLink),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black,
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.play_circle_filled, color: Colors.white),
            SizedBox(width: 5),
            Text(
              "Ver Video",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget _imageSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset(
          process.illustration,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _rightPanel(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(64.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _conceptSection(context),
          _detailBoxes(context),
        ],
      ),
    );
  }

  Widget _conceptSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Concepto:",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        Text(
          process.definition,
          style: const TextStyle(fontSize: 24),
        ),
      ],
    );
  }

  Widget _detailBoxes(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          _buildDetailBox(
            context,
            title: "Maquinaria y equipo:",
            description: process.machineryAndEquipment,
          ),
          _buildDetailBox(
            context,
            title: "Productos:",
            description: process.commonProducts.join(","),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailBox(BuildContext context,
      {required String title, required String description}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xFFE9E9E9),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(description),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}
