import 'package:flutter/material.dart';

class OverflowExampleWidget extends StatelessWidget {
  const OverflowExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.blue,
      child: const OverflowBox(
        maxWidth: 500,
        maxHeight: 500,
        child: Placeholder(
          color: Colors.red,
        ),
      ),
    );
  }
}
