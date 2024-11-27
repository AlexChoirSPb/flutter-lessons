import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/list_demo/components/grid_list_widget.dart';
import 'package:flutter_ui/apps/list_demo/components/long_list_widget.dart';
import 'package:flutter_ui/apps/list_demo/components/simple_list_widget.dart';

class TabComponent extends StatelessWidget {
  const TabComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Tabs demo"),
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.directions),
                text: "Simple List",
              ),
              Tab(
                icon: Icon(Icons.label),
                text: "Simple Grid",
              ),
              Tab(
                icon: Icon(Icons.filter),
                text: "Long List",
              )
            ]),
          ),
          body: const TabBarView(children: [
            SimpleListWidget(),
            GridListWidget(),
            LongListWidget()
          ]),
        ));
  }
}
