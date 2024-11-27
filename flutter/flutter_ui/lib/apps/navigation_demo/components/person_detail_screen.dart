import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/navigation_demo/components/person.dart';

class PersonDetailScreen extends StatelessWidget {
  const PersonDetailScreen({super.key, required this.person});

  final Person person;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(person.firstName)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text("${person.firstName} ${person.lastName}"),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, AddPersonToContact(true, person));
                  },
                  child: const Text('Add to Contact')),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, AddPersonToContact(false, person));
                  },
                  child: const Text('Remove of Contact')),
            )
          ],
        ),
      ),
    );
  }
}
