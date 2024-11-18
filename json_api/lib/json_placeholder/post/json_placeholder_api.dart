import 'package:json_api/json_placeholder/base/http_api.dart';
import 'package:json_api/json_placeholder/post/request/post_create_request.dart';
import 'package:json_api/json_placeholder/post/request/post_update_request.dart';
import 'package:json_api/json_placeholder/post/response/post_response.dart';
import 'dart:convert';

class JsonPlaceholderApi extends HttpApi {
  Future<PostResponse> postById(int postId) async {
    String path = "/posts/$postId";
    var json = await requestGetJson(path);
    return PostResponse.fromJson(json);
  }

  Future<List<PostResponse>> posts({int? userId, String? title}) async {
    String path = '/posts';
    path = addParam(path, "userId", userId?.toString());
    path = addParam(path, "title", title);

    Iterable l = jsonDecode(await requestGetString(path));
    List<PostResponse> posts =
        List<PostResponse>.from(l.map((e) => PostResponse.fromJson(e)));
    return posts;
  }

  Future<PostResponse> createPost(PostCreateRequest request) async {
    String path = "/posts";
    var json = await requestPost(path, request.toJson());
    return PostResponse.fromJson(json);
  }

  Future<PostResponse> updatePost(PostUpdateRequest request) async {
    String path = "/posts/${request.id.toString()}";
    var json = await requestPut(path, request.toJson());
    return PostResponse.fromJson(json);
  }

  Future<bool> deletePost(int postId) async {
    String path = "/posts/$postId";
    var json = await requestDelete(path);
    return true;
  }
}
