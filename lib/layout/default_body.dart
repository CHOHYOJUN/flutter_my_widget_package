import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:intl/intl.dart';

class DefaultBody extends StatefulWidget {
  const DefaultBody({Key? key}) : super(key: key);

  @override
  _DefaultBodyState createState() => _DefaultBodyState();
}

class _DefaultBodyState extends State<DefaultBody> {
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
          // 이미지 url로 width 채우는 위젯
          paddingTitleWidget(top: 10, text: '메인이미지', fontSize: 20),
          defaultImageWidget(),
          // 슬라이더 [1]
          paddingTitleWidget(top: 10, text: '슬라이더 리스트'),
          defaultCarouselSlider(),
          // 카드 리스트
          paddingTitleWidget(top: 10, text: '카드 리스트', color: Colors.amberAccent),
          cardListWidget(),
          cardListWidget(),
        ],
      ),
    );
  }

  // defaultCarouselSlider() 예제
  Widget defaultCarouselSlider() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        // 슬라이더의 높이 설정
        autoPlay: true,
        // 자동 재생 여부 설정
        enlargeCenterPage: true,
        // 활성화된 아이템 크기 확대 여부 설정
        aspectRatio: 16 / 9,
        // 슬라이더의 가로 세로 비율 설정
        autoPlayCurve: Curves.fastOutSlowIn,
        // 자동 재생 애니메이션 커브 설정
        enableInfiniteScroll: true,
        // 무한 스크롤 여부 설정
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        // 자동 재생 애니메이션 지속 시간 설정
        viewportFraction: 0.8, // 화면에 보여지는 아이템의 비율 설정
      ),
      items: imageUrls.map((url) {
        return Container(
          margin: const EdgeInsets.all(5.0), // 아이템 간의 여백 설정
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            // 아이템의 모서리를 둥글게 설정
            child: Image.network(
              url,
              fit: BoxFit.cover, // 이미지를 뷰포트에 맞게 조정
              width: 1000.0, // 이미지의 가로 크기 설정
            ),
          ),
        );
      }).toList(),
    );
  } // defaultCarouselSlider() - end

  /// 이미지 url로 width 채우는 위젯
  Widget defaultImageWidget() {
    return Container(
      margin: const EdgeInsets.all(10.0), // 위젯의 여백 설정
      child: Image.network(
        'https://img.freepik.com/premium-vector/realistic-christmas-background_52683-74895.jpg',
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
          /// 첫 번째 컬럼: 아바타 이미지
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
                      color: Colors.grey, // 서브젝트 텍스트의 색상 (파란색)
                    ),
                  ),
                ],
              ),
            ),
          ),
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
  /// 패딩 값과, 폰트 사이즈까지 입력
  /// TODO 1 : 컬러까지 받아야 겠다.
  Widget paddingTitleWidget({
    double? left,
    double? top,
    double? right,
    double? bottom,
    double? fontSize,
    MaterialAccentColor? color,
    required String text,
  }) {
    final EdgeInsetsGeometry padding = EdgeInsets.only(
      left: left ?? 12,
      top: top ?? 0,
      right: right ?? 0,
      bottom: bottom ?? 0,
    );

    return Padding(
      padding: padding,
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize ?? 14.0,
          color: color ?? Colors.white
        ),
      ),
    );
  }
}
