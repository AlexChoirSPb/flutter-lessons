import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/app_state_demo/helpers/number_format.dart';
import 'package:flutter_ui/apps/app_state_demo/model/person_contact.dart';
import 'package:flutter_ui/apps/app_state_demo/state/contact_book_state.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class EditPersonWidget extends StatefulWidget {
  const EditPersonWidget({super.key, required this.id});

  final String id;

  @override
  State<EditPersonWidget> createState() => _EditPersonWidgetState();
}

class _EditPersonWidgetState extends State<EditPersonWidget> {
  final _formKey = GlobalKey<FormState>();
  PersonContact? personContact;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        ContactBookState state =
            Provider.of<ContactBookState>(context, listen: false);

        personContact =
            PersonContact.copy(personContact: state.findById(widget.id)!);
      });
    });
  }

  void _save() {
    ContactBookState state =
        Provider.of<ContactBookState>(context, listen: false);
    state.edit(personContact!);
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Contacts"),
      ),
      body: personContact != null
          ? Container(
              padding: const EdgeInsets.all(10),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      initialValue: personContact!.firstName,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "First Name",
                      ),
                      onChanged: (value) {
                        setState(() {
                          personContact!.firstName = value;
                        });
                      },
                      validator: (value) => personContact!.validateFirstName(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      initialValue: personContact!.lastName,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Last Name",
                      ),
                      onChanged: (value) {
                        setState(() {
                          personContact!.lastName = value;
                        });
                      },
                      validator: (value) => personContact!.validateLastName(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      initialValue: personContact!.phone,
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
                          personContact!.phone = value;
                        });
                      },
                      validator: (value) => personContact!.validatePhone(),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (personContact!.validate()) {
                              _save();
                            }
                          },
                          child: const Text("Save"),
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
            )
          : const Center(
              child: Text("Усп, что-то пошло не так!"),
            ),
    );
  }
}
