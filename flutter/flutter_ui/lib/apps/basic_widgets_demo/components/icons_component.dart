import 'package:flutter/material.dart';

class IconsComponent extends StatelessWidget {
  const IconsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.add_business_rounded),
            Icon(
              Icons.fort,
              color: Colors.green,
              size: 48,
              semanticLabel: "Fort",
            ),
            Icon(
              Icons.audiotrack,
              color: Colors.red,
              size: 32,
            )
          ],
        ),
      ),
    );
  }
}
