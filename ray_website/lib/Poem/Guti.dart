import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'GuTiZhong/huangHun.dart';
import 'package:ray_website/CAD/singleCAD.dart';
import 'GuTiZhong/liMing.dart';
import 'GuTiZhong/Shui.dart';
import 'GuTiZhong/Yu.dart';
import 'GuTiZhong/Xing.dart';
import 'GuTiZhong/ZaJi.dart';

class GuTi extends StatefulWidget {
  GuTi({Key? key}) : super(key: key);

  @override
  _GuTiState createState() => _GuTiState();
}

class _GuTiState extends State<GuTi> {
  List<List> cs = [
    [
      "assest/background/back9.png",
      "夕阳欲颓，万物将息。感受着黑夜来临前的娴静，不亦是种乐趣",
      "黄昏",
      Colors.amber,
      huangHun()
    ],
    [
      "assest/background/back14.png",
      "黎明的光一点点撕破黑暗，充满希望的巨轮在远东拔地而起，又是一个美好的开始",
      "黎明",
      Colors.indigo.shade200,
      LiMing()
    ],
    [
      "assest/background/back15.png",
      "上善若水，愿清泉涤去内心的骄躁",
      "临水",
      Colors.lightBlue.shade200,
      Shui()
    ],
    [
      "assest/background/back12.png",
      "雨，总是不期而至。但，又不会突然",
      "描雨",
      Colors.blue.shade400,
      Yu()
    ],
    [
      "assest/background/back13.png",
      "行，万里路。观，千世景",
      "绘行",
      Colors.greenAccent,
      Xing()
    ],
    [
      "assest/background/back10.png",
      "生活是多彩的，也是值得纪念的",
      "杂记",
      Colors.pinkAccent,
      Zaji()
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("古体诗合集"),
          backgroundColor: Colors.amber,
        ),
        body: GridView.count(
            crossAxisCount: 2,
            children: List.generate(6, (index) {
              return AnimationConfiguration.staggeredGrid(
                  position: index,
                  duration: const Duration(milliseconds: 800),
                  columnCount: 3,
                  child: ScaleAnimation(
                    child: FadeInAnimation(
                      child: singleCAD(
                        showPic: cs[index][0],
                        content: cs[index][1],
                        title: cs[index][2],
                        fontC: cs[index][3],
                        pageTo: cs[index][4],
                      ),
                    ),
                  ));
            })));
  }
}
