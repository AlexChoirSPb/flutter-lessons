import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/state_demo/screen/number_format.dart';
import 'package:flutter_ui/apps/state_demo/screen/person_contact.dart';

class EditPersonWidget extends StatefulWidget {
  const EditPersonWidget({super.key, required this.initData});

  final PersonContact initData;

  @override
  State<EditPersonWidget> createState() => _EditPersonWidgetState();
}

class _EditPersonWidgetState extends State<EditPersonWidget> {
  final _formKey = GlobalKey<FormState>();

  PersonContact personContact = PersonContact();

  @override
  void initState() {
    setState(() {
      personContact = widget.initData;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Contacts"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                initialValue: personContact.firstName,
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
                initialValue: personContact.lastName,
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
                initialValue: personContact.phone,
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
                    child: const Text("Save"),
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
