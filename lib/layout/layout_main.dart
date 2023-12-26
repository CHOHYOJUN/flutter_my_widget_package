import 'package:flutter/material.dart';

import 'main_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      /// dark 테마
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.resolveWith((states) => Colors.indigo),
              ))),
      themeMode: ThemeMode.dark,
      ///
      home: const MainScreen(),
    );
  }
}