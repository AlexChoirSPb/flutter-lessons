import 'package:flutter/material.dart';

class OrientationExampleWidget extends StatelessWidget {
  const OrientationExampleWidget({super.key});

  Widget _buildPortrait() {
    return Center(
      child: Text("Portait"),
    );
  }

  Widget _buildLandscape() {
    return Center(
      child: Text("Landscape"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return orientation == Orientation.landscape
          ? _buildLandscape()
          : _buildPortrait();
    });
  }
}
