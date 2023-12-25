import 'package:flutter/material.dart';

import 'package:inflearn_study/layout/default_appbar.dart';
import 'package:inflearn_study/layout/default_body.dart';
import 'package:inflearn_study/layout/default_bottombar.dart';
import 'default_floating_button.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// [ appBar ] ↓↓↓↓↓
      appBar: DefaultAppBar(key: UniqueKey()), // Key 추가
      /// [ body ] ↓↓↓↓↓
      body: DefaultBody(key: UniqueKey()), // Key 추가
      /// [ bottom ] ↓↓↓↓↓
      bottomNavigationBar: DefaultBottomBar(
        key: UniqueKey(), // Key 추가
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
      /// [ floating btn ] ↓↓↓↓↓
      floatingActionButton: DefaultFloatingButton(
        onPressed: () {
          // 플로팅 버튼이 눌렸을 때의 동작 구현
        },
      ),
    );
  }
}
