import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

class DefaultCarouselSlider extends StatelessWidget {
  final List<String> imageUrls;

  DefaultCarouselSlider({super.key, required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        // 슬라이더의 높이를 설정합니다.

        autoPlay: true,
        // 자동 재생을 활성화합니다.

        enlargeCenterPage: true,
        // 현재 보여지는 아이템을 확대합니다.

        aspectRatio: 16 / 9,
        // 슬라이더의 가로/세로 비율을 설정합니다.

        autoPlayCurve: Curves.fastOutSlowIn,
        // 자동 재생 애니메이션의 커브를 설정합니다. Curves.fastOutSlowIn은 빠르게 시작해서 천천히 끝나는 커브입니다.

        enableInfiniteScroll: true,
        // 무한 스크롤을 활성화합니다. 슬라이더의 아이템이 끝에 도달하면 다시 처음으로 돌아갑니다.

        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        // 자동 재생 애니메이션의 지속 시간을 설정합니다. 여기에서는 800 밀리초로 설정되어 있습니다.

        viewportFraction: 0.8,
        // 슬라이더의 가시 영역 비율을 설정합니다. 0.8은 슬라이더 아이템의 80%만 보여지고 나머지는 가려진 상태입니다.
      ),
      items: imageUrls.map((url) {
        return Container(
          margin: const EdgeInsets.all(5.0),
          // 아이템 주위에 5.0 픽셀의 여백을 설정합니다.

          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            // 아이템의 모서리를 10.0 픽셀의 원형으로 잘라줍니다.

            child: Image.network(
              url,
              // 주어진 URL에서 이미지를 가져옵니다.

              fit: BoxFit.cover,
              // 이미지를 아이템에 꽉 채우도록 설정합니다.

              width: 1000.0,
              // 이미지의 너비를 1000.0으로 설정합니다.
            ),
          ),
        );
      }).toList(),
    );
  }
}
