//"${process.processName} (${process.processNameInEnglish})"

import 'package:flutter/material.dart';
import 'package:glosario_manufactura/views/common_components/image_overlay.dart';
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

  //

  //

  bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width > 600;
  }

  Widget _buildMobileView(BuildContext context) {
    return Container(
      // Container blanco para la vista móvil
      color: Colors.white,
    );
  }

  Widget _buildDesktopView(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Stack(
            children: [
              ImageOverlayWidget.asset(
                imagePath: process.illustration,
              ),
              Positioned(
                top: 50,
                left: 50,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.keyboard_arrow_left,
                        size: 36,
                        weight: 70,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${process.processName}(${process.processNameInEnglish})",
                          style: const TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Categoria: ${process.categories.join(",")}",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(64.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Concepto:",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    process.definition,
                    style: const TextStyle(
                      fontSize: 24,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Column(
                    children: [
                      Row(
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
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xFFE9E9E9),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDetailBox(
    BuildContext context, {
    required String title,
    required String description,
  }) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
        child: Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xFFE9E9E9),
          ),
          child: Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(description),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailSection(String title, String content,
      {bool isLink = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 4,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          isLink
              ? InkWell(
                  child: Text(
                    content,
                    style: const TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  onTap: () => _launchURL(content),
                )
              : Text(content),
        ],
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

// Center(
// child: SizedBox(
// //  width: MediaQuery.of(context).size.width * 0.7,
// child: Row(
// children: [
// Expanded(
// flex: 1,
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Expanded(
// child: Row(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Expanded(
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Expanded(
// flex: 2,
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// mainAxisAlignment: MainAxisAlignment.start,
// children: [
// Padding(
// padding: const EdgeInsets.symmetric(
// vertical: 8.0,
// horizontal: 32,
// ),
// child: GestureDetector(
// onTap: () => Navigator.pop(context),
// child: Row(
// children: [
// const Icon(
// Icons.arrow_back,
// size: 24,
// ), // Icono de flecha hacia atrás
// Text(
// "${process.processName} (${process.processNameInEnglish})",
// style: const TextStyle(
// fontSize: 24,
// fontWeight: FontWeight.bold,
// ),
// ),
// ],
// ),
// ),
// ),
// _buildDetailSection(
// 'Categoría:',
// process.categories.join(', '),
// ),
// _buildDetailSection(
// 'Concepto:', process.definition),
// _buildDetailSection(
// 'Productos:',
// process.commonProducts.join(', '),
// ),
// ],
// ),
// ),
// const SizedBox(height: 16),
// Expanded(
// flex: 2,
// child: Row(
// children: [
// _buildDetailBox(
// context,
// title: 'Maquinaria y equipo:',
// description:
// process.machineryAndEquipment,
// ),
// _buildDetailBox(
// context,
// title: 'Productos:',
// description:
// process.commonProducts.join(","),
// ),
// ],
// ),
// ),
// ],
// ),
// ),
// ],
// ),
// ),
// ],
// ),
// ),
// Expanded(
// flex: 1,
// child: Container(
// width: 600,
// height: double.infinity,
// //   margin: const EdgeInsets.all(8),
// decoration: BoxDecoration(
// color: Colors.grey[100],
// // borderRadius: BorderRadius.circular(30),
// ),
// // child: Image.asset(
// //   process.illustration,
// // ),
// ),
// ),
// ],
// ),
// ),
// );
