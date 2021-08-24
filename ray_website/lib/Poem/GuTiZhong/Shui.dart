import 'package:flutter/material.dart';
import 'package:ray_website/Poem/PoemMode.dart';

class Shui extends StatefulWidget {
  Shui({Key? key}) : super(key: key);

  @override
  _ShuiState createState() => _ShuiState();
}

class _ShuiState extends State<Shui> {
  List<List> contents = [
    [
      "assest/poem/guTi/s1.png",
      "临瀑",
      "森林的深处，有一孤泉在默默流淌",
      "早晨，昨日的露水还未完全消逝。寻访于幽林之中，似闻远处泉水潺潺。快步至山间瀑布之缘，仰观之高出飞泻的水花，拍击在青山之上，落于深潭之中。仿若闻不绝琴声，经久不息",
      "2020-08-15"
    ],
    [
      "assest/poem/guTi/s2.png",
      "倚礁",
      "靠着湖边的礁石，远望湖上波涛翻滚",
      "湖风，海鸥，白帆，依靠在礁石边的的他尽收眼底。看着湖鹅悠闲的随波逐流，让他变得平静，迎面吹来的咸咸湿湿的湖风，让他变得疲惫。好像多享受一会",
      "2020-06-22",
    ],
    [
      "assest/poem/guTi/s3.png",
      "湖隐",
      "湖上升起的白雾，仿佛和仙境一般",
      "伴随着晨风，他又来到这湖边。今天有些冷，可以远远看到湖面上凝着白雾，长脖子的鹅和鸭子在雾中进进出出，时隐时现。没一会远东的太阳渐渐拔地而起，如利剑一般撕开了这迷雾",
      "2020-06-04"
    ],
    [
      "assest/poem/guTi/s4.png",
      "八月初四临湖",
      "享受此刻",
      "湖边的公园，行人走的很慢，湖面上的游船随波慢慢荡着，远处的列车似乎在等待什么，也停在那里。这一刻，随着波浪拍击湖岸，他似乎羡慕起了湖中的游羽。",
      "2020-08-22"
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return PoemMode(
        backImg: "assest/background/back15.png",
        contents: contents,
        tiJi: "上善若水，愿清泉涤去内心的骄躁",
        title: "临水");
  }
}
