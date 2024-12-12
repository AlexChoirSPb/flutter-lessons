import 'package:flutter/material.dart';
import 'package:flutter_store/components/state_app_demo_widget.dart';
import 'package:flutter_store/db/service/db_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DBService.instance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SQLite demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const StateAppDemoWidget(),
    );
  }
}
