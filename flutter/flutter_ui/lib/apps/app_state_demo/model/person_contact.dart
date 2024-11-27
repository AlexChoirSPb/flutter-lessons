import 'package:flutter_ui/apps/app_state_demo/model/random_values.dart';
import 'package:uuid/uuid.dart';

class PersonContact {
  String firstName;
  String lastName;
  String phone;
  late String id;

  PersonContact()
      : id = const Uuid().v4(),
        firstName = "",
        lastName = "",
        phone = "";

  PersonContact.of(this.firstName, this.lastName, this.phone, this.id);

  PersonContact.copy({required PersonContact personContact})
      : id = personContact.id,
        firstName = personContact.firstName,
        lastName = personContact.lastName,
        phone = personContact.phone;

  static PersonContact random() {
    const uuid = Uuid();
    PersonContact personContact = PersonContact();

    personContact.id = uuid.v4();
    personContact.firstName = RandomValues.randomFirstName();
    personContact.lastName = RandomValues.randomLastName();
    personContact.phone = RandomValues.randomPhone();

    return personContact;
  }

  @override
  String toString() {
    return "PersonContact{firstName = $firstName, lastName = $lastName, phone = $phone, id = $id}";
  }

  String? validateFirstName() {
    if (firstName.isEmpty) {
      return "Please enter First Name";
    }
    return null;
  }

  String? validateLastName() {
    if (lastName.isEmpty) {
      return "Please enter Last Name";
    }
    return null;
  }

  String? validatePhone() {
    if (phone.isEmpty) {
      return "Please enter Phone";
    }
    return null;
  }

  bool validate() {
    if (validateFirstName() != null) return false;
    if (validateLastName() != null) return false;
    if (validatePhone() != null) return false;

    return true;
  }
}
