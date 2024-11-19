import 'package:flutter/material.dart';

class ExpandedExampleWidget extends StatelessWidget {
  const ExpandedExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.black,
      child: Column(
        children: [
          Container(
            color: Colors.blue,
            height: 50,
            width: 50,
          ),
          Expanded(
            child: Container(
              color: Colors.amber,
              width: 100,
            ),
          ),
          Container(
            color: Colors.red,
            height: 100,
            width: 100,
          )
        ],
      ),
    );
  }
}
