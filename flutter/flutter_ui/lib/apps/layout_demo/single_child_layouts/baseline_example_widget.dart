import 'package:flutter/material.dart';

class BaselineExampleWidget extends StatelessWidget {
  const BaselineExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Baseline(
        baseline: 0,
        baselineType: TextBaseline.alphabetic,
        child: Text("Baseline example"),
      ),
    );
  }
}
