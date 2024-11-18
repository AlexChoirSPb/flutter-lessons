class PostUpdateRequest {
  int id;
  String title;
  String body;
  String userId;

  PostUpdateRequest(this.id, this.body, this.title, this.userId);

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "body": body,
        "userId": userId,
      };
}
