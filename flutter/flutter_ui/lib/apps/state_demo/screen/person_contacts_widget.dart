import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/state_demo/screen/add_person_widget.dart';
import 'package:flutter_ui/apps/state_demo/screen/edit_person_widget.dart';
import 'package:flutter_ui/apps/state_demo/screen/person_contact.dart';

class PersonContactsWidget extends StatefulWidget {
  const PersonContactsWidget({super.key});

  @override
  State<PersonContactsWidget> createState() => _PersonContactsWidgetState();
}

class _PersonContactsWidgetState extends State<PersonContactsWidget> {
  List<PersonContact> contacts = [];

  Future<void> _onAddContact(context) async {
    final PersonContact? result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AddPersonWidget(),
      ),
    );

    if (!context.mounted) return;

    if (result == null) {
      ScaffoldMessenger.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(
          const SnackBar(
            content: Text('You canceled add contact'),
          ),
        );
      return;
    }

    setState(() {
      result.id = contacts.length;
      contacts.add(result);
      ScaffoldMessenger.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(
          const SnackBar(
            content: Text('You add contact'),
          ),
        );
    });
  }

  Future<void> _onEditContact(context, int index) async {
    final PersonContact? result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditPersonWidget(
          initData: contacts[index],
        ),
      ),
    );

    if (!context.mounted) return;

    if (result == null) {
      ScaffoldMessenger.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(
          const SnackBar(
            content: Text('You canceled edit contact'),
          ),
        );
      return;
    }

    setState(() {
      contacts[result.id] = result;
      ScaffoldMessenger.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(
          const SnackBar(
            content: Text('You edit contact'),
          ),
        );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          PersonContact person = contacts[index];
          return ListTile(
            title: Text('${person.firstName} ${person.lastName}'),
            subtitle: Text(person.phone),
            trailing: const Icon(Icons.edit),
            onTap: () async {
              _onEditContact(context, index);
            },
          );
        },
        itemCount: contacts.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _onAddContact(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
