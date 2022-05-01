import 'package:flutter/material.dart';
import 'sepPicMode.dart';

class pmMode extends StatefulWidget {
  pmMode({Key? key}) : super(key: key);

  @override
  State<pmMode> createState() => _pmModeState();
}

class _pmModeState extends State<pmMode> {
  double _screenWidth = 0,
      titleSize = 15,
      _screenH = 0,
      contentSize = 30,
      detPicSize = 1.7,
      detPicWidth = 1.3;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade700,
      body: Stack(children: [
        Positioned(
            top: 0,
            left: 0,
            child: sepPicMode(
              titleSize: _screenH / titleSize,
              detPicHeight: _screenH / detPicSize,
              contentSize: _screenH / contentSize,
              detPicWidth: _screenH / detPicWidth,
              sectionTitle: "雪花",
              sectionContaint:
                  "四月，本该是万物复苏的日子，后院的旧枝上，覆盖满了生长的旧疤，但深绿色的嫩芽已经迫不及待的冒出。可自然似乎想早一点见到白色的花朵，于是雪花便在这充满生机的季节不请自来。一朵朵还没来得及开放的花骨朵儿便覆上了银色的天空之花",
              decoImg:
                  "https://github.com/RayLyu-Mac/Ray_Website/blob/main/ray_website/assest/PictureOfTheYear/202204/IMG_20220418_185910_986.jpg?raw=true",
              decoPicHeight: _screenH / 1.7,
              decoPicWidth: _screenWidth / 1.7,
            )),
        Positioned(
            top: 0,
            left: _screenWidth / 1.75,
            child: sepPicMode(
              titleSize: _screenH / titleSize,
              detPicHeight: _screenH / detPicSize,
              contentSize: _screenH / contentSize,
              detPicWidth: _screenH / detPicWidth,
              sectionTitle: "午后",
              sectionContaint:
                  "午后，阳光在微风中变得柔和，暖暖的光线漫无目的的撒在这片天地。此刻，无端地羡慕起那只卧在码头的游鸭，在波浪的起伏中，随着朽木码头上下浮动。微咪的双眼；闲散的羽毛，在这微醺的午后，一切都慢了下来。",
              decoImg:
                  "https://github.com/RayLyu-Mac/Ray_Website/blob/main/ray_website/assest/PictureOfTheYear/202204/uTools_1651351881168.png?raw=true",
              decoPicHeight: _screenH / 2,
              decoPicWidth: _screenWidth / 2.25,
            )),
        Positioned(
            top: _screenH / 2.05,
            left: _screenWidth / 2.4,
            child: sepPicMode(
              titleSize: _screenH / titleSize,
              detPicHeight: _screenH / detPicSize,
              contentSize: _screenH / contentSize,
              detPicWidth: _screenH / detPicWidth,
              sectionTitle: "天路",
              sectionContaint:
                  "苍蓝的天空之下，白云潦草，草木蔓生。它静静地立在天地之间，固执的直指天空。风和雨在灰白的木质杆上，在五彩的路标上留下岁月的刻痕。也许他已经不在年轻，但犹如海上的灯塔一般，指引着人们前方的路。",
              decoImg:
                  "https://github.com/RayLyu-Mac/Ray_Website/blob/main/ray_website/assest/PictureOfTheYear/202204/IMG_20220416_110833__01.jpg?raw=true",
              decoPicHeight: _screenH / 1.9,
              decoPicWidth: _screenWidth / 1.65,
            )),
        Positioned(
            top: _screenH / 1.35,
            left: _screenWidth / 12,
            child: Container(
              child: Text(
                "Picture of the April 2022",
                style: TextStyle(
                    fontFamily: "growth",
                    fontSize: _screenH / 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ))
      ]),
    );
  }
}
