import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/navigation_demo/components/list_person_component.dart';
import 'package:flutter_ui/apps/navigation_demo/components/person.dart';
// import 'package:flutter_ui/apps/navigation_demo/components/screen_main_component.dart';
// import 'package:flutter_ui/apps/navigation_demo/components/tab_component.dart';

class NavigationDemoWidget extends StatelessWidget {
  const NavigationDemoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return TabComponent();
    return ListPersonComponent(
      persons: Person.all(),
    );
  }
}
