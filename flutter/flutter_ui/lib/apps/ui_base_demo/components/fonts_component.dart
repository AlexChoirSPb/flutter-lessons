import 'package:flutter/material.dart';

class FontsComponent extends StatelessWidget {
  const FontsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Text(
            'Ubuntu sample',
            style: TextStyle(fontFamily: "Ubuntu", fontSize: 32),
          ),
          Text(
            'Roboto sample',
            style: TextStyle(fontFamily: "Roboto", fontSize: 32),
          ),
          Text(
            'Roboto sample',
            style: TextStyle(),
          )
        ],
      ),
    );
  }
}
