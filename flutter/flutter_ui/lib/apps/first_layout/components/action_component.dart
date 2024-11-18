import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/first_layout/components/button_component.dart';

class ActionComponent extends StatelessWidget {
  const ActionComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;

    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonComponent(label: "CALL", icon: Icons.call, color: color),
          ButtonComponent(label: "ROUTE", icon: Icons.near_me, color: color),
          ButtonComponent(label: "SHARE", icon: Icons.share, color: color)
        ],
      ),
    );
  }
}
