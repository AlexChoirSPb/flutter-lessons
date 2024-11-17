import 'dart:convert';
import 'dart:io';

final factorialCalculate = FactorialCalculate();

class FactorialCalculate {
  void call() {
    print("Введите число:");
    int number = readInt();

    int numberFactorial = factorial(number);
    print("Факториал вашео числа: $numberFactorial");
  }

  int factorial(int n) {
    if (n <= 1) {
      return 1;
    } else {
      return n * factorial(n - 1);
    }
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
