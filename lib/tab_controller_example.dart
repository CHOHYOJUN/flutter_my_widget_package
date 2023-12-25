import 'package:flutter/material.dart';

class TabControllerExample extends StatefulWidget {
  const TabControllerExample({super.key});

  @override
  _TabControllerExampleState createState() => _TabControllerExampleState();
}

class _TabControllerExampleState extends State<TabControllerExample>
    with SingleTickerProviderStateMixin {
  late TabController _tabController; // TabController 선언

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this); // TabController 초기화
  }

  @override
  void dispose() {
    _tabController.dispose(); // TabController 해제
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tab Controller Example'),
          bottom: TabBar(
            controller: _tabController, // TabController 연결
            tabs: [
              Tab(text: 'Tab 1'), // 탭 1
              Tab(text: 'Tab 2'), // 탭 2
              Tab(text: 'Tab 3'), // 탭 3
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController, // TabController 연결
          children: [
            Center(child: Text('Content 1')), // 컨텐츠 1
            Center(child: Text('Content 2')), // 컨텐츠 2
            Center(child: Text('Content 3')), // 컨텐츠 3
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(TabControllerExample());
}
