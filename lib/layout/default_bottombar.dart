import 'package:flutter/material.dart';

class DefaultBottomBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const DefaultBottomBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  _DefaultBottomBarState createState() => _DefaultBottomBarState();
}

class _DefaultBottomBarState extends State<DefaultBottomBar> {
  @override
  Widget build(BuildContext context) {
    // BottomNavigationBar 위젯을 반환합니다.
    return BottomNavigationBar(
      currentIndex: widget.selectedIndex,
      onTap: widget.onItemTapped,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      // 선택된 아이템의 라벨을 표시합니다.
      showUnselectedLabels: true,
      // 선택되지 않은 아이템의 라벨을 표시합니다.
      items: generateIcons(), // _buildBottomBarItems 메소드를 호출하여 아이템들을 생성합니다.
    );
  }

  // 아이콘 리스트를 생성하는 메소드입니다.
  List<BottomNavigationBarItem> generateIcons() {
    List<String> labels = ['홈', 'Shots', '', '구독', '보관함'];
    List<double> sizes = [25, 25, 25, 25, 25];
    List<IconData> icons = [
      Icons.home,
      Icons.electric_bolt,
      Icons.add_circle_outline,
      Icons.subscriptions_outlined,
      Icons.view_agenda_outlined,
    ];

    // 라벨, 아이콘, 사이즈를 사용하여 BottomNavigationBarItem을 생성합니다.
    return List.generate(labels.length, (index) {
      return BottomNavigationBarItem(
        icon: Icon(
          icons[index],
          size: sizes[index],
        ),
        label: labels[index],
      );
    });
  }
}
