import 'dart:convert';
import 'dart:io';

final convertToFarentage = ConvertToFarengate();

class ConvertToFarengate {
  void call() {
    print("Введите температуру в цельсиях:");
    double temperature = readDouble();

    double result = convert(temperature);

    print("Ваша температура в Фаренгейтах: $result");
  }

  double convert(double t) {
    return (t * 9 / 5) + 32;
  }

  String readString() {
    String? line = stdin.readLineSync(encoding: utf8);
    line ??= readString();
    return line;
  }

  double readDouble() {
    String str = readString();
    double? d = double.tryParse(str);
    d ??= readDouble();
    return d;
  }

  int readInt() {
    String str = readString();
    int? d = int.tryParse(str);
    d ??= readInt();
    return d;
  }
}
