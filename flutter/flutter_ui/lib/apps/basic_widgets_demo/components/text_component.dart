import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  const TextComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "AppBar",
        ),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                "lalalalallalalalallalalalallalalalallalalalallalalalallalalalallalalalallalalalallalalalallalalalallalalalallalalalallalalalallalalalallalalalal",
                overflow: TextOverflow.visible,
                maxLines: 2,
              ),
            ),
            Expanded(
                child: Text.rich(
              TextSpan(text: "Hello", children: [
                TextSpan(
                    text: " world",
                    style: TextStyle(fontStyle: FontStyle.italic))
              ]),
            ))
          ],
        ),
      ),
    );
  }
}
