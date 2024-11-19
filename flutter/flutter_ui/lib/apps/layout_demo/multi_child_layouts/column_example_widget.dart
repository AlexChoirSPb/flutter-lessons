import 'package:flutter/material.dart';

class ColumnExampleWidget extends StatelessWidget {
  const ColumnExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      verticalDirection: VerticalDirection.up,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text("Column example"),
        Text("Column example"),
        Text("Column example"),
        Expanded(child: Placeholder())
      ],
    );
  }
}
