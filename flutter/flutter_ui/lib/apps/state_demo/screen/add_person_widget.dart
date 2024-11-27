import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/state_demo/screen/number_format.dart';
import 'package:flutter_ui/apps/state_demo/screen/person_contact.dart';

class AddPersonWidget extends StatefulWidget {
  const AddPersonWidget({super.key});

  @override
  State<AddPersonWidget> createState() => _AddPersonWidgetState();
}

class _AddPersonWidgetState extends State<AddPersonWidget> {
  final _formKey = GlobalKey<FormState>();
  final PersonContact personContact = PersonContact();

  @override
  void initState() {
    super.initState();
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
                    personContact.firstName = value;
                  });
                },
                validator: (value) => personContact.validateFirstName(),
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
                    personContact.lastName = value;
                  });
                },
                validator: (value) => personContact.validateLastName(),
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
                    personContact.phone = value;
                  });
                },
                validator: (value) => personContact.validatePhone(),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (personContact.validate()) {
                        Navigator.pop(context, personContact);
                      }
                    },
                    child: const Text("Submit"),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context, null);
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
