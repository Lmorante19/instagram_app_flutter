import 'package:flutter/material.dart';

import '../data/image_data.dart';

class ImageCart extends StatelessWidget {
  const ImageCart({Key? key, required this.imageData}) : super(key: key);

  final ImageData imageData;

  //Widget para generar la carta donde quedaran las imagenes
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: ClipRRect(
        child: Image.network(imageData.imageUrl, fit: BoxFit.cover),
      ),
    );
  }
}
