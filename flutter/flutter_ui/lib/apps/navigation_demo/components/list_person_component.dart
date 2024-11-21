import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/navigation_demo/components/person.dart';
import 'package:flutter_ui/apps/navigation_demo/components/person_detail_screen.dart';

class ListPersonComponent extends StatelessWidget {
  const ListPersonComponent({super.key, required this.persons});

  final List<Person> persons;

  Future<void> _navigateAndGetResult(BuildContext context, int index) async {
    final AddPersonToContact? result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PersonDetailScreen(person: persons[index])));
    if (!context.mounted) return;

    if (result == null) {
      ScaffoldMessenger.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text('Has no answer')));

      return;
    }

    String message = '';

    if (result!.needAdd) {
      message = "Need add person to contact";
    } else {
      message = "Need remove person out of contact";
    }

    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Persons list")),
      body: ListView.builder(
        itemCount: persons.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(persons[index].firstName),
          onTap: () {
            _navigateAndGetResult(context, index);
          },
        ),
      ),
    );
  }
}
