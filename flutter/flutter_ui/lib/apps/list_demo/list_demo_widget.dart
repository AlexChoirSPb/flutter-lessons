import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/list_demo/components/grid_list_widget.dart';
import 'package:flutter_ui/apps/list_demo/components/long_list_widget.dart';
import 'package:flutter_ui/apps/list_demo/components/simple_list_widget.dart';

class ListDemoWidget extends StatelessWidget {
  const ListDemoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'List widgets',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: LongListWidget(),
    );
  }
}
