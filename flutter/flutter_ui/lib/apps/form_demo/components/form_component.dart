import 'package:flutter/material.dart';

class FormComponent extends StatefulWidget {
  const FormComponent({super.key});

  @override
  State<FormComponent> createState() => _FormComponentState();
}

class _FormComponentState extends State<FormComponent> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "UserName",
            ),
            onChanged: (value) {
              print("$value");
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter username";
              }
              return null;
            },
          ),
          const SizedBox(
            height: 16,
            width: double.infinity,
          ),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Email",
            ),
            onChanged: (value) {
              print("$value");
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter email";
              }
              bool emailIsValid = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  .hasMatch(value);
              if (!emailIsValid) {
                return "Please enter valid email";
              }
              return null;
            },
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            alignment: Alignment.center,
            child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Data submit'),
                      ),
                    );
                  }
                },
                child: Text("Send form")),
          )
        ],
      ),
    );
  }
}
