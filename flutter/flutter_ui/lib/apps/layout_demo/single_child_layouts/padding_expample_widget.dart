import 'package:flutter/material.dart';

class PaddingExpampleWidget extends StatelessWidget {
  const PaddingExpampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(100),
      child: Placeholder(
        color: Colors.blue,
      ),
    );
  }
}
