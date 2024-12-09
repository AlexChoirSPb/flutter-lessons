import 'dart:convert';

import 'package:flutter_http/api/album/dto/album.dart';
import 'package:http/http.dart' as http;

const host = 'https://jsonplaceholder.typicode.com';

Future<Album> fetchAlbum() async {
  final responseAlbum = await http.get(Uri.parse('$host/albums/1'));

  if (responseAlbum.statusCode == 200) {
    print(responseAlbum.body);
    return Album.fromJson(
        jsonDecode(responseAlbum.body) as Map<String, dynamic>);
  } else {
    throw Exception('Failed to load data');
  }
}
