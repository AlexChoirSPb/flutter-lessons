import 'package:flutter/foundation.dart';
import 'package:flutter_ui/apps/app_state_demo/model/person_contact.dart';
import 'package:uuid/uuid.dart';

enum Status { emply, loading, done }

class ContactBookState extends ChangeNotifier {
  List<PersonContact> contacts = [];
  Status status = Status.emply;

  PersonContact? findById(String id) {
    for (PersonContact personContact in contacts) {
      if (personContact.id == id) return personContact;
    }

    return null;
  }

  void edit(PersonContact personContact) {
    for (int i = 0; i < contacts.length; i++) {
      if (contacts[i].id == personContact.id) {
        contacts[i] = personContact;
        notifyListeners();
        return;
      }
    }
  }

  void create(PersonContact personContact) {
    const uuid = Uuid();
    personContact.id = uuid.v4();
    contacts.insert(0, personContact);
    notifyListeners();
  }

  void load() async {
    status = Status.loading;
    notifyListeners();
    Future.delayed(const Duration(seconds: 5), () {
      for (int i = 0; i < 1000; i++) {
        contacts.add(PersonContact.random());
      }
      status = Status.done;
      notifyListeners();
    });
  }
}
