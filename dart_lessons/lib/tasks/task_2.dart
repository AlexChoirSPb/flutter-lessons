import 'dart:convert';
import 'dart:io';

final checkEven = CheckEven();

class CheckEven {
  void call() {
    print("Введите число:");
    double number = readDouble();

    bool isEven = number % 2 == 0;
    print("Введенное число ${isEven ? 'чётное!' : 'не чётное!'}");
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
}
