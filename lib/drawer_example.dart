import 'package:flutter/material.dart';

class DrawerExample extends StatelessWidget {
  const DrawerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Example'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero, // only()하고 같음 -- 상단 까지 채우기
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                '메뉴',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('항목 1'),
              onTap: () {
                // 이전화면으로 돌아가기
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('항목 2'),
              onTap: () {
                // 항목 2를 클릭했을 때 수행할 작업
              },
            ),
            ListTile(
              title: Text('항목 3'),
              onTap: () {
                // 항목 3을 클릭했을 때 수행할 작업
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('메인 화면'),
      ),
    );
  }
}
