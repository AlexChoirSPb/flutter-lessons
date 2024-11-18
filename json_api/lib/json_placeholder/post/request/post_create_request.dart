class PostCreateRequest {
  String title;
  String body;
  String userId;

  PostCreateRequest(this.body, this.title, this.userId);

  Map<String, dynamic> toJson() => {
        "title": title,
        "body": body,
        "userId": userId,
      };
}
