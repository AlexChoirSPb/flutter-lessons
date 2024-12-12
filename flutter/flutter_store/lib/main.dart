import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class CounterStorage {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    print(path);
    return File('$path/counter.txt');
  }

  Future<int> _readCounter() async {
    try {
      final file = await _localFile;
      final content = await file.readAsString();
      return int.parse(content);
    } catch (e) {
      return 0;
    }
  }

  Future<File> _writeConter(int counter) async {
    final file = await _localFile;
    return file.writeAsString('$counter');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared Preferences demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(
        title: 'Shared Preferences demo',
        counterStorage: CounterStorage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage(
      {super.key, required this.title, required this.counterStorage});

  final String title;
  final CounterStorage counterStorage;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  //!Реализация с SharedPreferences
  // Future<void> _loadCounter() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     _counter = prefs.getInt('counter') ?? 0;
  //   });
  // }

  Future<void> _loadCounter() async {
    widget.counterStorage._readCounter().then((value) {
      setState(() {
        _counter = value;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _loadCounter();
  }

  //!Реализация с SharedPreferences
  // Future<void> _incrementCounter() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     _counter = (prefs.getInt('counter') ?? 0) + 1;
  //     prefs.setInt("counter", _counter);
  //   });
  // }

  Future<void> _incrementCounter() async {
    setState(() {
      _counter++;
      widget.counterStorage._writeConter(_counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
