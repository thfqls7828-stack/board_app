import 'package:flutter/material.dart';

// 일반 색상은 Theme.of(context).dividerColor
// 하이라이트 색상 Theme.of(context).highlightColor

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> posts = [];

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          "BoardApp",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).dividerColor,
          ),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 24,
                color: Theme.of(context).highlightColor,
              ),
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: '검색어',
                prefixIcon: Icon(Icons.search,
                color: Theme.of(context).colorScheme.primary,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Expanded(
            child: posts.isEmpty ? _buildEmptyView() : _buildListView(posts),
          ),
        ],
      ),
    );
  }

  // 게시글 있을 때 위젯 함수
  Widget _buildEmptyView() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.library_add, size: 80, color: Colors.grey),
          SizedBox(height: 18),
          Text(
            "게시글이 없습니다.",
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
        ],
      ),
    );
  }

  // 게시글 리스트를 보여줄 위젯 함수
  Widget _buildListView(List<String> posts) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(child: Text("{$index + 1}")),
          title: Text(posts [index]),
          subtitle: Text("게시물 상세 내용입니다."),
        );
      },
    );
  }
}
