class Person {
  String firstName;
  String lastName;

  Person(this.firstName, this.lastName);

  static List<Person> all() {
    return List.generate(
        20,
        (index) => Person(
            'Person Name #${index + 1}', 'Person Lastname #${index + 1}'));
  }
}

class AddPersonToContact {
  bool needAdd;
  Person person;

  AddPersonToContact(this.needAdd, this.person);
}
