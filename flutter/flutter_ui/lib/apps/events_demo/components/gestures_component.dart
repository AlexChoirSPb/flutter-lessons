// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class GesturesComponent extends StatelessWidget {
  const GesturesComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.blue),
          child: const Text(
            'Gesture handler',
            style: TextStyle(fontSize: 32),
          ),
        ),
      ),
      onTap: () {
        print('click');
      },
      onDoubleTap: () {
        print('double click');
      },
      onTapCancel: () {
        print('cancel click');
      },
      onTapDown: (details) {
        print('down click: $details');
      },
      onHorizontalDragStart: (details) {
        print('onHorizontalDragStart: $details');
      },
    );
  }
}
