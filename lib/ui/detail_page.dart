import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final List contents = [
    (title: "1번 게시글", content: "반갑습니다!"),
    (title: "2번 게시글", content: "ㅇㄴㄹㄴㅇㄹ"),
    (title: "3번 게시글", content: "hi!"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("자유게시판"),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: Center(child: Text("게시판 상단 공지", style: TextStyle())),
          ),
          // 리스트 뷰가 차지할 영역을 지정함
          Expanded(
            child: ListView.builder(
              // 리스트 개수대로 출력
              itemCount: contents.length,
              itemBuilder: (context, index) {
                // Container보다는 Card가 더 게시판 형식에 어울린다.
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: ListTile(
                    //ListTile은 기본적으로 내부 패딩과 title, subtitle을 포함하기 때문에 보통 56~72px 정도의 높이를 차지. 이것보다 작으면 에러가 발생
                    leading: Icon(Icons.circle, size: 12),
                    // 클래스에서 제목 가져온 것
                    title: Text(
                      contents[index].title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // 클래스에서 내용 가져온 것
                    subtitle: Text(
                      contents[index].content,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    // 이동하는 아이콘
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      print(contents[index].title);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
