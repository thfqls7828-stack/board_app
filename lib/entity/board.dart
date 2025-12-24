class Board {
  Board({
    required this.id,
    required this.title,
    required this.content,
    required this.authorId,
    required this.createdAt,
  });

  final String id;
  final String title;
  final String content;
  final String authorId;
  final DateTime createdAt;
}
