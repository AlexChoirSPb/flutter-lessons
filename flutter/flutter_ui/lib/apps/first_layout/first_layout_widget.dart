import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/first_layout/components/action_component.dart';
import 'package:flutter_ui/apps/first_layout/components/description_component.dart';
import 'package:flutter_ui/apps/first_layout/components/image_component.dart';
import 'package:flutter_ui/apps/first_layout/components/title_component.dart';

class FirstLayoutWidget extends StatelessWidget {
  const FirstLayoutWidget({super.key});

  final String image =
      'https://upload.wikimedia.org/wikipedia/commons/a/ad/Starbuckscenter.jpg';
  final String name = "Starbucks Corporation";
  final String location = "Seattle, Washington, U.S.";
  final String description =
      "Starbucks Corporation is an American multinational chain of coffeehouses and roastery reserves headquartered in Seattle, Washington. It was founded in 1971 by Jerry Baldwin, Zev Siegl, and Gordon Bowker at Seattle's Pike Place Market initially as a coffee bean wholesaler. Starbucks was converted into a coffee shop serving espresso-based drinks under the ownership of Howard Schultz, who was chief executive officer from 1986 to 2000 and led the aggressive expansion of the franchise across the West Coast of the United States.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('First layout'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ImageComponent(image: image),
            TitleComponent(name: name, location: location),
            const ActionComponent(),
            DescriptionComponent(description: description),
          ],
        ),
      ),
    );
  }
}
