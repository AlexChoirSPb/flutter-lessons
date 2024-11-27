import 'package:flutter/material.dart';

class GridListWidget extends StatelessWidget {
  const GridListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      scrollDirection: Axis.horizontal,
      children: List.generate(
        10,
        (index) => Center(
          child: GridTile(
            header: Container(
              height: 40,
              color: Colors.black38,
              child: const Center(
                child: Text("Jhon Snow"),
              ),
            ),
            footer: Container(
              height: 40,
              color: Colors.black38,
              child: const Center(
                child: Text("24/02/1999"),
              ),
            ),
            child: Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/e/ed/Ian_Hickson_at_CSS_Working_Group_Meeting_Day_Three.jpeg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
