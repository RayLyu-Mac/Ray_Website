import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter/material.dart';

class CADCover extends StatefulWidget {
  CADCover({Key? key}) : super(key: key);

  @override
  _CADCoverState createState() => _CADCoverState();
}

class _CADCoverState extends State<CADCover> {
  double _screenWidth = 0;
  double _screenH = 0;
  List<String> coverImgs = [
    "assest/3Dprint/cover/1.png",
    "assest/3Dprint/cover/2.png",
    "assest/3Dprint/cover/3.png",
    "assest/3Dprint/cover/4.png",
    "assest/3Dprint/cover/5.png",
  ];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImageSlideshow(
          width: double.infinity,
          height: _screenH,
          indicatorColor: Colors.blue,
          initialPage: 0,
          autoPlayInterval: 3000,
          children: [
            for (var j = 0; j < coverImgs.length; j++)
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.white.withOpacity(0.9), BlendMode.dstATop),
                        image: AssetImage(coverImgs[j]),
                        fit: BoxFit.fitWidth)),
              )
          ]),
    );
  }
}
