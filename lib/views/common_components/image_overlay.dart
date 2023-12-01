import 'package:flutter/material.dart';

enum ImageType { asset, network }

class ImageOverlayWidget extends StatelessWidget {
  final String imagePath;
  final ImageType imageType;

  const ImageOverlayWidget.asset({
    Key? key,
    required this.imagePath,
  })  : imageType = ImageType.asset,
        super(key: key);

  const ImageOverlayWidget.network({
    Key? key,
    required this.imagePath,
  })  : imageType = ImageType.network,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        imageType == ImageType.network
            ? Image.network(
                imagePath,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  debugPrint("$error");
                  return const Center(
                      child: Text('No se pudo cargar la imagen.'));
                },
              )
            : Image.asset(
                imagePath,
                fit: BoxFit.fitWidth,
              ),
        Container(
          color: Colors.black.withOpacity(0.3),
        ),
      ],
    );
  }
}
