import 'package:flutter/material.dart';

class LongListWidget extends StatelessWidget {
  const LongListWidget({super.key});

  static List<String> items =
      List<String>.generate(1000, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      prototypeItem: ListTile(
        title: Text('${items.first}'),
      ),
      itemBuilder: (context, index) {
        return ListTile(title: Text(items[index]));
      },
    );
  }
}
