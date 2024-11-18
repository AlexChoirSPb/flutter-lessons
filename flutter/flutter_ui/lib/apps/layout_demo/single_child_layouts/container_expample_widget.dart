import 'package:flutter/material.dart';

class ContainerExpampleWidget extends StatelessWidget {
  const ContainerExpampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      child: const Placeholder(
        color: Colors.black,
      ),
    );
  }
}
