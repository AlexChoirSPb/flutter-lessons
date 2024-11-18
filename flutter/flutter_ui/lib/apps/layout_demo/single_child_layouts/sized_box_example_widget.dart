import 'package:flutter/material.dart';

class SizedBoxExampleWidget extends StatelessWidget {
  const SizedBoxExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 300,
      height: 300,
      child: Card(
        color: Colors.red,
        child: Center(child: Text('SizedBox')),
      ),
    );
  }
}
