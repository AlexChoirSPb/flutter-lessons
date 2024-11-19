import 'package:flutter/material.dart';

class SimpleListWidget extends StatelessWidget {
  const SimpleListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(
          100,
          (index) => ListTile(
                title: Text("Alex"),
                subtitle: Text("24/02/1999"),
                trailing: Icon(Icons.delete),
                leading: Icon(Icons.person),
              )),
    );
  }
}
