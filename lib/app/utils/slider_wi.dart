import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class slider_wi extends StatefulWidget {
  const slider_wi({
    super.key,
  });
  @override
  State<slider_wi> createState() => _slider_wiState();
}
class _slider_wiState extends State<slider_wi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: ImageSlideshow(
        indicatorColor: Colors.blue,
        onPageChanged: (value) {
          debugPrint('Page changed: $value');
        },
        autoPlayInterval: 3000,
        isLoop: true,
        children: [
          Image.asset(
            'images/sample_image_1.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'images/sample_image_2.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'images/sample_image_3.jpg',
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
