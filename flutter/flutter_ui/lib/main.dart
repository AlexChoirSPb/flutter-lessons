import 'package:flutter/material.dart';
// import 'package:flutter_ui/apps/first_layout/first_layout_widget.dart';
import 'package:flutter_ui/apps/layout_demo/layout_demo_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LayoutDemoApp(),
    );
  }
}
