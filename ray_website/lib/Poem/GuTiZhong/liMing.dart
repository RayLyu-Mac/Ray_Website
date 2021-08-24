import 'package:flutter/material.dart';
import 'package:ray_website/Poem/PoemMode.dart';

class LiMing extends StatefulWidget {
  LiMing({Key? key}) : super(key: key);

  @override
  _LiMingState createState() => _LiMingState();
}

class _LiMingState extends State<LiMing> {
  List<List> contents = [
    [
      "assest/poem/guTi/z1.png",
      "咏晨",
      "雨后的清晨，可以净心灵",
      "昨晚刚下完雨，在黎明的橙光下闪闪发光。",
      "2020-04-21"
    ],
    [
      "assest/poem/guTi/z2.png",
      "四月十日起观晨",
      "在学校的梧桐树下，享受晨息",
      "当晨光慢慢在刻满历史记忆的古墙上晕开，漫步于沾满晨露的步道上，看着城楼边的桃树缓缓盛开。",
      "2020-05-02"
    ],
    [
      "assest/poem/guTi/z3.png",
      "旭",
      "倚着湖边的翠树，望着湖对面的群峰",
      "在黎明云开雾散之际，行至湖边远望着天际升起的太阳。感受其温暖的阳光洒在湖面，洒在湖鹅的羽毛上，洒在心间",
      "2020-05-04"
    ],
    [
      "assest/poem/guTi/z4.png",
      "晨行",
      "早上的空气很清新，是跑步的好时候",
      "飞奔在晨间的小道上，迎着清新的风。心情随着奔跑的节奏，自由的跳动着。不经意间，路边的野花也让人心头一震",
      "2020-05-06"
    ],
    [
      "assest/poem/guTi/z6.png",
      "血日",
      "坐在山崖边遥看日出，也是别有一番风味",
      "在天还没亮的时候就出发，行走在通往山顶的小路上。东方微明，略显青紫色。骤然间，天边开始蔓延猩红的血色，一个浴血的巨轮缓缓升起，仿佛远远的就能感受到他的愤怒。",
      "2020-07-24"
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return PoemMode(
        backImg: "assest/background/back14.png",
        contents: contents,
        tiJi: "黎明的光一点点撕破黑暗，充满希望的巨轮在远东拔地而起，又是一个美好的开始",
        title: "黎明");
  }
}
