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
              padding: EdgeInsets.all(16),
              child: Text("${person.firstName + "" + person.lastName}"),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, AddPersonToContact(true, person));
                  },
                  child: Text('Add to Contact')),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, AddPersonToContact(false, person));
                  },
                  child: Text('Remove of Contact')),
            )
          ],
        ),
      ),
    );
  }
}
