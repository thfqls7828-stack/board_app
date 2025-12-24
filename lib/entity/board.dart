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
  //글내용
  final String content;
  //작성자 아이디
  final String authorId;
  //생성일
  final DateTime createdAt;
}
