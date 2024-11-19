import 'package:flutter/material.dart';

class ElevatedButtonComponent extends StatelessWidget {
  const ElevatedButtonComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("appBar"),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: TextStyle(fontSize: 20),
    );

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: () {
              print("Click");
            },
            onHover: (pointerHasEntered) {
              print('$pointerHasEntered');
            },
            onLongPress: () {
              print("Loooong press");
            },
            child: Text('Pressed me'),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text('Disabled button'),
            style: style,
          ),
          ElevatedButton(
            onPressed: () {},
            style: style,
            child: Text('Enabled button'),
          )
        ],
      ),
    );
  }
}
