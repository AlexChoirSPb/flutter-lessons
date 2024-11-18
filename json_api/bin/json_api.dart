import 'package:json_api/json_placeholder/post/json_placeholder_api.dart';
import 'package:json_api/json_placeholder/post/request/post_create_request.dart';
import 'package:json_api/json_placeholder/post/request/post_update_request.dart';

void main(List<String> arguments) async {
  var api = JsonPlaceholderApi();
  var postById = await api.postById(1);
  print(postById);
  var posts = await api.posts(
      userId: 1,
      title:
          "sunt aut facere repellat provident occaecati excepturi optio reprehenderit");
  print(posts);

  var createPost = PostCreateRequest("body", "title", "1");
  var createResponse = await api.createPost(createPost);
  print(createResponse);

  // var updatePost = PostUpdateRequest(1, "body", "title", "1");
  // var updateResponse = await api.updatePost(updatePost);
  // print(updateResponse);

  // var deletePost = PostUpdateRequest(1, "body", "title", "1");
  // var updateResponse = await api.updatePost(updatePost);
  // print(updateResponse);

  var result = await api.deletePost(1);
  print(result);
}
