import 'package:flutter/material.dart';

class ImageComponent extends StatelessWidget {
  const ImageComponent({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxWidth: 400,
      child: Image.network(image, width: 600, height: 240, fit: BoxFit.cover),
    );
  }
}
