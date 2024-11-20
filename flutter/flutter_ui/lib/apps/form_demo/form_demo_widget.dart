import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/form_demo/components/form_component.dart';
import 'package:flutter_ui/apps/form_demo/components/snack_bar_component.dart';

class FormDemoWidget extends StatelessWidget {
  const FormDemoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forms & Inputs Demo"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        child: SnackBarComponent(),
        padding: EdgeInsets.all(16),
      ),
    );
  }
}
