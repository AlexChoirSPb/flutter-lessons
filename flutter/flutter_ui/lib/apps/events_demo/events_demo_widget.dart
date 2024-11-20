import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/events_demo/components/gestures_component.dart';

class EventsDemoWidget extends StatelessWidget {
  const EventsDemoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Events Demo"),
        backgroundColor: Colors.blueAccent,
      ),
      body: const GesturesComponent(),
    );
  }
}
