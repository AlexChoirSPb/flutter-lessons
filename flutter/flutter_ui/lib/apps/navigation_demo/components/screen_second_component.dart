import 'package:flutter/material.dart';

class ScreenSecondComponent extends StatelessWidget {
  const ScreenSecondComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("second Screen")),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Go back")),
      ),
    );
  }
}
