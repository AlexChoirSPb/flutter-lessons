import 'dart:convert';
import 'dart:io';

final revertStr = RevertStr();

class RevertStr {
  void call() {
    print("Введите строку:");
    String input = readString();

    String revertInput = input.split("").reversed.join("");

    print("Ваша строка задом наперед: $revertInput");
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
