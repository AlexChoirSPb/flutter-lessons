import 'package:flutter/material.dart';

class AppbarComponent extends StatelessWidget {
  const AppbarComponent({super.key});

  AppBar _appBarBuild(BuildContext context) {
    return AppBar(
      title: const Text("App Bar"),
      backgroundColor: Colors.redAccent,
      shadowColor: Theme.of(context).colorScheme.shadow,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.close),
        tooltip: "Close",
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.add_alert)),
        IconButton(onPressed: () {}, icon: Icon(Icons.add)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarBuild(context),
      body: ListView(
        children: List.generate(
          1000,
          (index) => const ListTile(
            title: Text("Example app bar"),
          ),
        ),
      ),
    );
  }
}
