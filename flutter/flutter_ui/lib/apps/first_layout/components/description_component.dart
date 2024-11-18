import 'package:flutter/material.dart';

class DescriptionComponent extends StatelessWidget {
  const DescriptionComponent({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}
