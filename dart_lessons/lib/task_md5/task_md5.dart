import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';

final convertStrToMd5 = ConvertStrToMd5();

class ConvertStrToMd5 {
  void call() {
    print("Введите строку:");
    String input = readString();

    var bytes = utf8.encode(input);

    var result = md5.convert(bytes).toString();

    print('Ваша строка, зашифрованная в MD5: $result');
  }

  String readString() {
    String? line = stdin.readLineSync(encoding: utf8);
    line ??= readString();
    return line;
  }
}
