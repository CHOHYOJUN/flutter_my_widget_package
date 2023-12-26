import 'package:flutter/material.dart';
import 'package:inflearn_study/sliver_example.dart';
import 'package:inflearn_study/snakbar_example.dart';
import 'package:inflearn_study/tab_controller_example.dart';

import 'animated_container.dart';
import 'animated_opacity.dart';
import 'drawer_example.dart';
import 'orientation_builder_example.dart';

void main() {
  runApp(const MyApp());
}

/// dsad
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.resolveWith((states) => Colors.indigo),
          ))),
      themeMode: ThemeMode.dark,
      home: exampleShow(),
    );
  }
}

exampleShow() {
  /// 에니메이션
  // return const AnimatedContainerExample();

  /// 애니메이션 나타나기, 사라지기
  // return const AnimatedOpacityExample();

  /// 숨김 메뉴
  // return const DrawerExample();

  /// 스넥바
  // return const MySnackBar();

  /// 슬리버 기능
  return const MySliver();

  /// 가로세로 변환시 감지해서 활용하기
  // return const OrientationBuilderExample();

  /// 탭 컨트롤러
  // return const TabControllerExample();
}
