class Board {
  Board({
    required this.id, // 고유번호, 방번호 느낌
    required this.title, // 제목
    required this.content, // 글 내용
    required this.authorId, // 글쓴이
    required this.createdAt, // 언제 작성되었는지
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
