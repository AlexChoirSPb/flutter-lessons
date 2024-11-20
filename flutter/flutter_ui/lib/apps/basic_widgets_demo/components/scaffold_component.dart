import 'package:flutter/material.dart';

class ScaffoldComponent extends StatelessWidget {
  const ScaffoldComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.green,
        alignment: Alignment.center,
        child: const Text("Hello world!"),
      ),
      appBar: AppBar(
        title: const Text("Scaffold"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.alarm),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50,
          color: Colors.red,
        ),
      ),
    );
  }
}
