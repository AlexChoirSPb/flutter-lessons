import 'package:flutter/material.dart';
// import 'package:flutter_ui/apps/events_demo/events_demo_widget.dart';
// import 'package:flutter_ui/apps/form_demo/form_demo_widget.dart';
import 'package:flutter_ui/apps/navigation_demo/navigation_demo_widget.dart';
// import 'package:flutter_ui/apps/basic_widgets_demo/basic_widgets_demo_widget.dart';
// import 'package:flutter_ui/apps/list_demo/list_demo_widget.dart';
// import 'package:flutter_ui/apps/scrolling_demo/scrolling_demo_widget.dart';
// import 'package:flutter_ui/apps/ui_base_demo/components/theme_widget.dart';
// import 'package:flutter_ui/apps/ui_base_demo/ui_base_demo_widget.dart';
// import 'package:flutter_ui/apps/first_layout/first_layout_widget.dart';
// import 'package:flutter_ui/apps/layout_demo/layout_demo_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        // theme: ThemeWidget.customTheme(),
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home: const LayoutDemoApp(),
        home: const NavigationDemoWidget());
  }
}
