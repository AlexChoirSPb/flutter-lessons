import 'package:flutter/material.dart';
import 'package:flutter_store/db/dto/person_entity.dart';
import 'package:flutter_store/state/contact_book_state.dart';
import 'package:flutter_store/state/number_formatter.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class AddPersonWidget extends StatefulWidget {
  const AddPersonWidget({super.key});

  @override
  State<AddPersonWidget> createState() => _AddPersonWidgetState();
}

class _AddPersonWidgetState extends State<AddPersonWidget> {
  final _formKey = GlobalKey<FormState>();
  PersonEntity personEntity = PersonEntity();

  void _create() {
    ContactBookState state =
        Provider.of<ContactBookState>(context, listen: false);
    state.create(personEntity);
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Contact"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "First Name",
                ),
                onChanged: (value) {
                  setState(() {
                    personEntity.firstName = value;
                  });
                },
                validator: (value) => personEntity.validateFirstName(),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Last Name",
                ),
                onChanged: (value) {
                  setState(() {
                    personEntity.lastName = value;
                  });
                },
                validator: (value) => personEntity.validateLastName(),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                autocorrect: false,
                inputFormatters: [
                  NumberFormatter(),
                ],
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Phone",
                ),
                onChanged: (value) {
                  setState(() {
                    personEntity.phone = value;
                  });
                },
                validator: (value) => personEntity.validatePhone(),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (personEntity.validate()) {
                        _create();
                      }
                    },
                    child: const Text("Submit"),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: const Text("Cancel"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
