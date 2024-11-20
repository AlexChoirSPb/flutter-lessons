import 'package:flutter/material.dart';

class ImageComponent extends StatelessWidget {
  const ImageComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.network(
          height: 300,
          fit: BoxFit.contain,
          'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
        ),
        const Image(
          fit: BoxFit.contain,
          height: 300,
          image: AssetImage("assets/images/background.jpg"),
        ),
      ],
    );
  }
}
