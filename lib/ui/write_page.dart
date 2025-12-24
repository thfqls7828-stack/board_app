import 'package:flutter/material.dart';

class WritePage extends StatefulWidget {
  const WritePage({super.key});

  @override
  State<WritePage> createState() => _WritePageState();
}

class _WritePageState extends State<WritePage> {
  List<String> themeList = [];
  void saveToDo(String theme) {
    setState(() {
      //목록 바구니에 추가
      themeList.add(theme);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            iconSize: 24,
            onPressed: () => Navigator.pop(context),
          ),
        ),
        title: const Text(
          '게시판 글쓰기',

          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),

      body: Column(
        children: [
          TextField(
            autofocus: true,
            decoration: InputDecoration(hintText: '제목'),
            style: TextStyle(fontSize: 16),
            maxLines: 1,
            textInputAction: TextInputAction.done,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: '세부정보 추가',
              border: InputBorder.none,
            ),
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
