import 'package:flutter/material.dart';
import 'package:flutter_store/db/dto/person_entity.dart';
import 'package:flutter_store/state/contact_book_state.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class PersonsWidget extends StatelessWidget {
  const PersonsWidget({super.key});

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
                    PersonEntity personEntity = state.contacts[index];
                    return ListTile(
                      leading: Text('${index + 1}'),
                      title: Text(
                          '${personEntity.firstName} ${personEntity.lastName}'),
                      subtitle: Text(personEntity.phone),
                      trailing: const Icon(Icons.edit),
                      onTap: () {
                        _onEditContact(context, personEntity.id);
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
