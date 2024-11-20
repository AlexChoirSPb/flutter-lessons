import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/ui_base_demo/components/fonts_component.dart';
import 'package:flutter_ui/apps/ui_base_demo/components/image_component.dart';
import 'package:flutter_ui/apps/ui_base_demo/components/video_component.dart';
// import 'package:flutter_ui/apps/ui_base_demo/components/orientation_example_widget.dart';
// import 'package:flutter_ui/apps/ui_base_demo/components/orientation_widget.dart';
// import 'package:flutter_ui/apps/ui_base_demo/components/theme_widget.dart';

class UiBaseDemoWidget extends StatelessWidget {
  const UiBaseDemoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('UI Base Demo'),
    //     backgroundColor: Colors.yellow,
    //   ),
    //   body: OrientationWidget(),
    // );

    // return ThemeWidget();
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Fonts Demo'),
    //     backgroundColor: Colors.yellow,
    //   ),
    //   // body: const FontsComponent(),
    //   body: ImageComponent(),
    // );
    return VideoComponent();
  }
}
