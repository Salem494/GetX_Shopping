import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BuildSlider extends StatefulWidget {
  BuildSlider(this.height);
  double height;
  @override
  _BuildSliderState createState() => _BuildSliderState();
}

class _BuildSliderState extends State<BuildSlider> {
  int pageIndex = 0;

  List Collection = [];

  List sliderData = [
    'assets/assets/Image Banner 2.png',
    'assets/assets/Image Banner 3.png',
    'assets/assets/22.jfif',
    'assets/assets/23.jfif',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
          height: widget.height,
          width: double.infinity,
          child: CarouselSlider(
            items: sliderData
                .map((e) => Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(e),fit: BoxFit.fill)),
              // child: Text('${e.offerName}'),
            ))
                .toList(),
            options: CarouselOptions(
              height: 200,
              scrollDirection: Axis.horizontal,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 3 / 2,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ))
    ]);
  }
}