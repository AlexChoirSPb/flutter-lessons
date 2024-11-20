import 'package:flutter/material.dart';

class ScrollingDemoWidget extends StatelessWidget {
  const ScrollingDemoWidget({super.key});

  Widget _buildItem() {
    return const ListTile(
      leading: Icon(Icons.person),
      title: Text("Alex"),
      subtitle: Text("24/02/1999"),
      trailing: Icon(Icons.delete),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text(
              "Sliver App Bar",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.green,
            expandedHeight: 200,
            flexibleSpace: Placeholder(),
            floating: true,
            pinned: true,
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => _buildItem(),
                  childCount: 1000))
        ],
      ),
    );
  }
}
