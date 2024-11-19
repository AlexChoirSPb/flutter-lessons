import 'package:flutter/material.dart';

class AspectRatioExampleWidget extends StatelessWidget {
  const AspectRatioExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      alignment: Alignment.center,
      width: double.infinity,
      height: 100,
      child: AspectRatio(
        aspectRatio: 2 / 1,
        child: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}
