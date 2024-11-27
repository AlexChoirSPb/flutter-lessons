// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class SnackBarComponent extends StatelessWidget {
  const SnackBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: ElevatedButton(
            onPressed: () {
              const snackBar = SnackBar(content: Text("SnackBar v1"));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: const Text("Click me!"),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {
              final snackBar = SnackBar(
                content: const Text("SnackBar v2"),
                action: SnackBarAction(
                  label: 'Close',
                  onPressed: () {
                    print("SnackBar v2 onPressed");
                  },
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: const Text("Click me!"),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {
              final snackBar = SnackBar(
                content: const Text("SnackBar v3"),
                behavior: SnackBarBehavior.floating,
                dismissDirection: DismissDirection.up,
                showCloseIcon: true,
                action: SnackBarAction(
                  label: 'Close',
                  onPressed: () {
                    print("SnackBar v2 onPressed");
                  },
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: const Text("Click me!"),
          ),
        ),
      ],
    );
  }
}
