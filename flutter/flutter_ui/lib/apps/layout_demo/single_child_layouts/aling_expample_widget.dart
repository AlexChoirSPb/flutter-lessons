import 'package:flutter/material.dart';

class AlignExpampleWidget extends StatelessWidget {
  const AlignExpampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 300,
        width: 300,
        child: Container(
          color: Colors.red,
          child: Align(
            child: Text("Hello world"),
            alignment: Alignment(0.5, 0.5),
          ),
        ),
      ),
    );
  }
}
