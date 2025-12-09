class NewsModel {
  final String id;
  final String title;
  final String content;
  final String author;
  final String? imageUrl;
  final String category;
  final DateTime publishedAt;
  final int commentsCount;

  NewsModel({
    required this.id,
    required this.title,
    required this.content,
    required this.author,
    this.imageUrl,
    required this.category,
    required this.publishedAt,
    this.commentsCount = 0,
  });

  // From JSON (for future Laravel API)
  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      id: json['id'].toString(),
      title: json['title'] ?? '',
      content: json['content'] ?? '',
      author: json['author'] ?? 'Anonymous',
      imageUrl: json['image_url'],
      category: json['category'] ?? 'General',
      publishedAt: json['published_at'] != null 
          ? DateTime.parse(json['published_at'])
          : DateTime.now(),
      commentsCount: json['comments_count'] ?? 0,
    );
  }

  // To JSON (for future Laravel API)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'author': author,
      'image_url': imageUrl,
      'category': category,
      'published_at': publishedAt.toIso8601String(),
      'comments_count': commentsCount,
    };
  }
}
