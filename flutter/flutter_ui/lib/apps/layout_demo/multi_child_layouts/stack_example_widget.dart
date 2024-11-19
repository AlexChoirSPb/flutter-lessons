import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/layout_demo/multi_child_layouts/column_example_widget.dart';

class StackExampleWidget extends StatelessWidget {
  const StackExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.red, Colors.blue, Colors.green],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
        ),
        ColumnExampleWidget()
      ],
    );
  }
}
