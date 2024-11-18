import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/layout_demo/single_child_layouts/aling_expample_widget.dart';
import 'package:flutter_ui/apps/layout_demo/single_child_layouts/center_expample_widget.dart';
import 'package:flutter_ui/apps/layout_demo/single_child_layouts/container_expample_widget.dart';
import 'package:flutter_ui/apps/layout_demo/single_child_layouts/padding_expample_widget.dart';
import 'package:flutter_ui/apps/layout_demo/single_child_layouts/sized_box_example_widget.dart';

class LayoutDemoApp extends StatelessWidget {
  const LayoutDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Layouts Examples"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ContainerExpampleWidget(),
            // SizedBoxExampleWidget(),
            // PaddingExpampleWidget(),
            // CenterExpampleWidget(),
            AlignExpampleWidget(),
          ],
        ),
      ),
    );
  }
}
