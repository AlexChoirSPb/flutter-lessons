class PersonContact {
  String firstName;
  String lastName;
  String phone;
  late int id;

  PersonContact()
      : firstName = "",
        lastName = "",
        phone = "";

  PersonContact.of(this.firstName, this.lastName, this.phone);

  @override
  String toString() {
    return "PersonContact{firstName = $firstName, lastName = $lastName, phone = $phone}";
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
