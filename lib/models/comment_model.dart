class CommentModel {
  final String id;
  final String newsId;
  final String userId;
  final String userName;
  final String content;
  final DateTime createdAt;

  CommentModel({
    required this.id,
    required this.newsId,
    required this.userId,
    required this.userName,
    required this.content,
    required this.createdAt,
  });

  // From JSON (for future Laravel API)
  factory CommentModel.fromJson(Map<String, dynamic> json) {
    return CommentModel(
      id: json['id'].toString(),
      newsId: json['news_id'].toString(),
      userId: json['user_id'].toString(),
      userName: json['user_name'] ?? 'Anonymous',
      content: json['content'] ?? '',
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : DateTime.now(),
    );
  }

  // To JSON (for future Laravel API)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'news_id': newsId,
      'user_id': userId,
      'user_name': userName,
      'content': content,
      'created_at': createdAt.toIso8601String(),
    };
  }
}
