import 'package:flutter/foundation.dart';
import 'package:flutter_store/db/dto/person_entity.dart';
import 'package:flutter_store/db/service/db_service.dart';
import 'package:uuid/uuid.dart';

enum Status {
  empty,
  loading,
  done;
}

class ContactBookState extends ChangeNotifier {
  List<PersonEntity> contacts = [];
  Status status = Status.empty;

  PersonEntity? byId(String id) {
    for (PersonEntity personEntity in contacts) {
      if (personEntity.id == id) return personEntity;
    }

    return null;
  }

  void edit(PersonEntity personEntity) async {
    for (int i = 0; i < contacts.length; i++) {
      if (contacts[i].id == personEntity.id) {
        contacts[i] = personEntity;
        await DBService.instance().update(personEntity);
        notifyListeners();
        return;
      }
    }
  }

  void delete(PersonEntity personEntity) async {
    for (int i = 0; i < contacts.length; i++) {
      if (contacts[i].id == personEntity.id) {
        contacts.removeAt(i);
        await DBService.instance().delete(personEntity.id);
        notifyListeners();
        return;
      }
    }
  }

  void create(PersonEntity personEntity) async {
    personEntity.id = Uuid().v4();
    await DBService.instance().insert(personEntity);
    contacts.insert(0, personEntity);
    notifyListeners();
  }

  void load() async {
    Future.delayed(const Duration(seconds: 1), () async {
      status = Status.loading;
      notifyListeners();
      List<PersonEntity> all = await DBService.instance().list();
      contacts.clear();

      if (all.isEmpty) {
        for (int i = 0; i < 10; i++) {
          PersonEntity person = PersonEntity.random();
          await DBService.instance().insert(person);
          contacts.add(person);
        }
      } else {
        contacts.addAll(all);
      }
      status = Status.done;
      notifyListeners();
    });
  }
}
