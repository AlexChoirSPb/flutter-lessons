class PostResponse {
  int id;
  String title;
  String body;
  String userId;

  PostResponse.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'] ?? "",
        body = json['body'] ?? "",
        userId = json['userId']?.toString() ?? "";

  @override
  String toString() {
    return "PostResponse{id: $id, title: $title, body: $body, userId: $userId}";
  }
}
