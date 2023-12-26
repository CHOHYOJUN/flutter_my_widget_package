import 'package:flutter/material.dart';

class MySliver extends StatelessWidget {
  const MySliver({Key? key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            buildSliverAppBar(),  // SliverAppBar 추가
            buildSliverList(),  // SliverList 추가
            buildSliverGrid(),  // SliverGrid 추가
            buildSliverToBoxAdapter(),  // SliverToBoxAdapter 추가
          ],
        ),
      ),
    );
  }

  //ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

  // SliverAppBar를 생성하는 함수
  Widget buildSliverAppBar() {
    return SliverAppBar(
      title: Text('Sliver Example'),  // AppBar의 타이틀
      expandedHeight: 200,  // AppBar가 확장될 높이
      flexibleSpace: FlexibleSpaceBar(
        background: Image.network(
          'https://yimgf-thinkzon.yesform.com/docimgs/public/1/65/64314/64313637.jpg',  // 배경 이미지의 URL
          fit: BoxFit.cover,  // 이미지를 어떻게 채울지 설정 (cover는 가로세로 비율 유지하며 채움)
        ),
      ),
    );
  }

  // SliverList를 생성하는 함수
  Widget buildSliverList() {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          ListTile(
            title: Text('Item 1'),  // 리스트 아이템 1
          ),
          ListTile(
            title: Text('Item 2'),  // 리스트 아이템 2
          ),
          ListTile(
            title: Text('Item 3'),  // 리스트 아이템 3
          ),
        ],
      ),
    );
  }

  // SliverGrid를 생성하는 함수
  Widget buildSliverGrid() {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,  // 격자의 열 개수 (2열)
      ),
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return Container(
            color: Colors.blue,  // 컨테이너의 배경색
            height: 100,  // 컨테이너의 높이
            child: Center(
              child: Text('Grid Item $index'),  // 격자 아이템의 텍스트
            ),
          );
        },
        childCount: 4,  // 아이템 개수 (4개)
      ),
    );
  }

  // SliverToBoxAdapter를 생성하는 함수
  Widget buildSliverToBoxAdapter() {
    return SliverToBoxAdapter(
      child: Container(
        height: 200,  // 컨테이너의 높이
        color: Colors.red,  // 컨테이너의 배경색
        child: Center(
          child: Text('Custom Box'),  // 컨테이너 안의 텍스트
        ),
      ),
    );
  }


}
