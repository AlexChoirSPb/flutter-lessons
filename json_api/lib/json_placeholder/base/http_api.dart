import 'dart:convert';
import 'package:http/http.dart' as http;

enum HttpType {
  post,
  put,
  delete;
}

class HttpApi {
  final String baseUrl = 'https://jsonplaceholder.typicode.com';

  String addParam(String url, String key, String? value) {
    if (url.contains("?") == false) {
      return addParam("$url?", key, value);
    }
    if (value != null && value.isNotEmpty) {
      return "$url$key=$value&";
    }

    return url;
  }

  Future<String> requestGetString(String path) async {
    String url = baseUrl + path;
    http.Response response = await http.get(Uri.parse(url));
    return response.body;
  }

  Future<Map<String, dynamic>> requestGetJson(String path) async {
    String response = await requestGetString(path);
    var json = jsonDecode(response) as Map<String, dynamic>;
    return json;
  }

  Future<Map<String, dynamic>> _requestBody(
      {required String path,
      required HttpType httpType,
      Map<String, dynamic>? body}) async {
    String urlString = baseUrl + path;
    Uri url = Uri.parse(urlString);
    late http.Response response;

    switch (httpType) {
      case HttpType.post:
        response = await http.post(url, body: body);
      case HttpType.put:
        response = await http.put(url, body: body);

      case HttpType.delete:
        response = await http.delete(url, body: body);
    }

    var json = jsonDecode(response.body) as Map<String, dynamic>;

    return json;
  }

  Future<Map<String, dynamic>> requestPost(
      String path, Map<String, dynamic> body) async {
    return await _requestBody(path: path, httpType: HttpType.post, body: body);
  }

  Future<Map<String, dynamic>> requestPut(
      String path, Map<String, dynamic> body) async {
    return await _requestBody(path: path, httpType: HttpType.put, body: body);
  }

  Future<Map<String, dynamic>> requestDelete(
    String path,
  ) async {
    return await _requestBody(path: path, httpType: HttpType.delete);
  }
}
