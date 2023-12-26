import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../slider/default_carousel_slider.dart';

import '../title/title_widget.dart';

class DefaultBody extends StatefulWidget {
  const DefaultBody({Key? key}) : super(key: key);

  @override
  _DefaultBodyState createState() => _DefaultBodyState();
}

class _DefaultBodyState extends State<DefaultBody> {
  // 메인 이미지
  final topImageUrl =
      'https://img.freepik.com/premium-vector/realistic-christmas-background_52683-74895.jpg';

  // 슬라이더 용
  final List<String> imageUrls = [
    'https://yimgf-thinkzon.yesform.com/docimgs/public/1/65/64314/64313637.jpg',
    'https://www.e-patentnews.com/imgdata/e-patentnews_com/202209/2022090300016624.jpg',
    'https://image.dongascience.com/Photo/2020/12/68540f70b919d444e760b2d2bf65bb60.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [

          /// 이미지 url로 width 채우는 위젯

          const TitleWidget(top: 10, text: '메인이미지', fontSize: 30, color: Colors.amberAccent),
          defaultImageWidget(url: topImageUrl),

          /// 슬라이더 [1]
          const TitleWidget(top: 10, text: '슬라이더 리스트'),
          DefaultCarouselSlider(imageUrls: imageUrls,),

          /// 카드 리스트
          const TitleWidget(top: 10, text: '카드 리스트', color: Colors.amberAccent),

          cardListWidget(),
          cardListWidget(),
        ],
      ),
    );
  }

  /// 이미지 url로 width 채우는 위젯
  Widget defaultImageWidget({required url}) {
    return Container(
      margin: const EdgeInsets.all(10.0), // 위젯의 여백 설정
      child: Image.network(
        url,
        // 이미지 URL 설정
        fit: BoxFit.fill, // 이미지를 가로 크기에 맞게 채웁니다
      ),
    );
  }

  /// 메세지 리스트
  /// Todo [1] :  Map -> List || Class -> List  형태로 만들자
  Widget cardListWidget() {
    return Card(
      color: Colors.grey, // 배경색을 원하는 색상으로 설정하세요
      child: Row(
        children: [

          /// 첫 번째 컬럼: [아바타] 이미지
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://img.khan.co.kr/news/2023/01/02/news-p.v1.20230102.1f95577a65fc42a79ae7f990b39e7c21_P1.png'),
                // 아바타 URL 이미지
                radius: 30.0, // 아바타 이미지의 크기 조절
              ),
            ),
          ),

          /// 두번째 칼럼: [타이틀,서브젝트]
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '타이틀', // 타이틀 문자열
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Colors.white, // 타이틀 텍스트의 색상 (빨간색)
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    '서브젝트', // 서브젝트 문자열
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black, // 서브젝트 텍스트의 색상 (파란색)
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// [날짜,시간]
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              alignment: Alignment.topRight,
              child: Text(
                DateFormat('yyyy-MM-dd a hh:mm:ss').format(DateTime.now()),
                // 현재 날짜와 시간
                style: const TextStyle(
                  fontSize: 11.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

/// 타이틀 위젯
/// 필수: [텍스트] , 옵션: [패딩 값],[폰트 사이즈],[폰트 컬러]
//   Widget paddingTitleWidget({
//     double? left,
//     double? top,
//     double? right,
//     double? bottom,
//     double? fontSize,
//     MaterialAccentColor? color,
//     required String text,
//   }) {
//     final EdgeInsetsGeometry padding = EdgeInsets.only(
//       left: left ?? 12,
//       top: top ?? 0,
//       right: right ?? 0,
//       bottom: bottom ?? 0,
//     );
//
//     return Padding(
//       padding: padding,
//       child: Text(
//         text,
//         style:
//             TextStyle(fontSize: fontSize ?? 14.0, color: color ?? Colors.white),
//       ),
//     );
//   }
// }

}