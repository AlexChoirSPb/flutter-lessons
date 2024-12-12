import 'dart:math';

class RandomValues {
  static final random = Random();

  static final firstNames = [
    "John",
    "Mary",
    "Mia",
    "Alex",
    "Andrew",
    "Tarryn",
    "Daly",
    "Nikita",
    "Dima",
    "Artem",
    "Nika",
    "Dasha",
    "Polina",
    "Misha",
    "Aziz",
    "Anal",
    "Katya",
    "Magomed",
    "Mitya",
    "Anatoliy",
  ];

  static final lastNames = [
    "Shepilov",
    "Bogdanov",
    "Gorlov",
    "Imaev",
    "Analov",
    "Gotovtsev",
    "Troitskaya",
    "Bulkin",
    "Asafev",
    "Gudkov",
    "Pavlinov",
    "Ponchikov",
    "Makarov",
    "Chirkov",
    "Malamutov",
    "Dogsov",
    "Diamov",
    "Kiricheev",
    "Evsichev",
    "Lipupuev",
  ];

  static String randomFirstName() {
    return firstNames[random.nextInt(firstNames.length - 1)];
  }

  static String randomLastName() {
    return lastNames[random.nextInt(lastNames.length - 1)];
  }

  static String randomPhone() {
    int min = 79500000000;
    int max = 79599999999;
    int phone = min + random.nextInt(max - min);
    return '+$phone';
  }
}
