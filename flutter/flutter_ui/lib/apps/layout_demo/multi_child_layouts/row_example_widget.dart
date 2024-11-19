import 'package:flutter/material.dart';

class RowExampleWidget extends StatelessWidget {
  const RowExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      verticalDirection: VerticalDirection.up,
      children: [
        Text("Lalalala"),
        Expanded(
          child: Container(
            color: Colors.red,
          ),
        )
      ],
    );
  }
}
