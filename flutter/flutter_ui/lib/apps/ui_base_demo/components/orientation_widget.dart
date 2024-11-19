import 'package:flutter/material.dart';

class OrientationWidget extends StatelessWidget {
  const OrientationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return GridView.count(
        crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
        children: List.generate(100, (index) {
          return Center(
            child: Text(
              "item $index",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          );
        }),
      );
    });
  }
}
