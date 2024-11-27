import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/app_state_demo/model/person_contact.dart';
import 'package:flutter_ui/apps/app_state_demo/state/contact_book_state.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class PersonContactsWidget extends StatelessWidget {
  const PersonContactsWidget({super.key});

  void _onEditContact(BuildContext context, String id) {
    context.go('/edit/$id');
  }

  void _onAddContact(BuildContext context) {
    context.go('/add');
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ContactBookState>(
      builder: (BuildContext context, ContactBookState state, Widget? child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Person Contacts"),
          ),
          body: state.status == Status.done
              ? ListView.builder(
                  itemCount: state.contacts.length,
                  itemBuilder: (context, index) {
                    PersonContact personContact = state.contacts[index];
                    return ListTile(
                      leading: Text('${index + 1}'),
                      title: Text(
                          '${personContact.firstName} ${personContact.lastName}'),
                      subtitle: Text(personContact.phone),
                      trailing: const Icon(Icons.edit),
                      onTap: () {
                        _onEditContact(context, personContact.id);
                      },
                    );
                  },
                )
              : const Center(
                  child: CircularProgressIndicator(),
                ),
          floatingActionButton: state.status == Status.done
              ? FloatingActionButton(
                  onPressed: () {
                    _onAddContact(context);
                  },
                  child: const Icon(Icons.add),
                )
              : null,
        );
      },
    );
  }
}
