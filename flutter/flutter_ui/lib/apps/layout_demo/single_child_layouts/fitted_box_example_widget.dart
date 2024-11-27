import 'package:flutter/material.dart';

class FittedBoxExampleWidget extends StatelessWidget {
  const FittedBoxExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 300,
      color: Colors.blue,
      child: const FittedBox(
        fit: BoxFit.contain,
        child: Placeholder(),
      ),
    );
  }
}
