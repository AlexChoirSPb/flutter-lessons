import 'package:flutter/material.dart';
import 'package:flutter_store/db/dto/person_entity.dart';
import 'package:flutter_store/state/contact_book_state.dart';
import 'package:flutter_store/state/number_formatter.dart';
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
  PersonEntity? personEntity;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        ContactBookState state =
            Provider.of<ContactBookState>(context, listen: false);

        personEntity = PersonEntity.copy(personEntity: state.byId(widget.id)!);
      });
    });
  }

  void _save() {
    ContactBookState state =
        Provider.of<ContactBookState>(context, listen: false);
    state.edit(personEntity!);
    context.pop();
  }

  void _delete() {
    ContactBookState state =
        Provider.of<ContactBookState>(context, listen: false);
    state.delete(personEntity!);
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Contacts"),
      ),
      body: personEntity != null
          ? Container(
              padding: const EdgeInsets.all(10),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      initialValue: personEntity!.firstName,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "First Name",
                      ),
                      onChanged: (value) {
                        setState(() {
                          personEntity!.firstName = value;
                        });
                      },
                      validator: (value) => personEntity!.validateFirstName(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      initialValue: personEntity!.lastName,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Last Name",
                      ),
                      onChanged: (value) {
                        setState(() {
                          personEntity!.lastName = value;
                        });
                      },
                      validator: (value) => personEntity!.validateLastName(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      initialValue: personEntity!.phone,
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
                          personEntity!.phone = value;
                        });
                      },
                      validator: (value) => personEntity!.validatePhone(),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (personEntity!.validate()) {
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
                        const SizedBox(
                          width: 16,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            _delete();
                          },
                          child: const Text("Delete"),
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
