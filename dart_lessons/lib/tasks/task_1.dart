import 'dart:convert';
import 'dart:io';

final rectangleArea = RectangleArea();

class RectangleArea {
  void call() {
    print("Введите длинну прямоугольника:");
    double length = readDouble();

    print("Введите ширину прямоугольника:");
    double width = readDouble();

    double area = length * width;
    print("Площадь прямоугольника: $area");
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
