import 'package:flutter/material.dart';

class MySnackBar extends StatelessWidget {
  const MySnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar Example'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Show SnackBar'),
          onPressed: () {
            final snackBar = SnackBar(
              /// content 는 필수
              content: const Text('This is a SnackBar'),
              action: SnackBarAction(
                label: 'Close',
                onPressed: () {
                  // SnackBar 닫기 버튼을 눌렀을 때 수행할 작업
                },
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
        ),
      ),
    );
  }

  ///  특정 조건에 따라 동적으로 위젯을 생성하고 싶을 때 사용
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('SnackBar Example'),
//         ),
//         body: Builder(
//           builder: (context) => Center(
//             child: ElevatedButton(
//               child: Text('Show SnackBar'),
//               onPressed: () {
//                 final snackBar = SnackBar(
//                   // content 는 필수
//                   content: const Text('This is a SnackBar'),
//                   action: SnackBarAction(
//                     label: 'Close',
//                     onPressed: () {
//                       // SnackBar 닫기 버튼을 눌렀을 때 수행할 작업
//                     },
//                   ),
//                 );
//                 ScaffoldMessenger.of(context).showSnackBar(snackBar);
//               },
//             ),
//           ),
//         ));
//   }
// }
}
