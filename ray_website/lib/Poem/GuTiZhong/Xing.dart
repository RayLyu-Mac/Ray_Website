import 'package:flutter/material.dart';
import 'package:ray_website/Poem/PoemMode.dart';

class Xing extends StatefulWidget {
  Xing({Key? key}) : super(key: key);

  @override
  _XingState createState() => _XingState();
}

class _XingState extends State<Xing> {
  List<List> contents = [
    [
      "assest/poem/guTi/x1.png",
      "北巡",
      "行车于原野，心奔于天地",
      "被繁重的功课弄得心烦意乱，便驱车前往田野，让沉闷的心不在受到拘束。看着偌大的国土，也让人不由得欣慰",
      "2020-07-12"
    ],
    [
      "assest/poem/guTi/x2.png",
      "暑中山行",
      "行于枝间漏光",
      "仲夏的日子是炎热的，不过在山林里又是另外一回事了。 就暂且停于树荫之下，看着脚下广阔的王土，仿佛帝君在世。",
      "2020-07-15"
    ],
    ["assest/poem/guTi/x3.png", "原野1471", "农家小舍", "横云，霜草，劲风，腾鸥", "2020-05-12"],
    [
      "assest/poem/guTi/x4.png",
      "野",
      "行于旷野之中，只为寻访那奇花异草",
      "行走于屋后的草场，草场刚被剃过头，看起来很精神，也显得矗立于草场中的电线杆额外的高大。鹅黄色的小花和蓬松的蒲公英在这里星罗棋布，他尽量小心的经过他们，以免惊扰了他们",
      "2020-06-02"
    ],
    [
      "assest/poem/guTi/x5.png",
      "午后登山",
      "从山上冲下来的欢愉",
      "午后的太阳还是很毒，风也渐渐停了。于是他便骑上车从山顶往山下冲，风景变换，疾风抚耳",
      "2020-06-19"
    ],
    [
      "assest/poem/guTi/x6.png",
      "八月初三游园",
      "方寸公园观童嬉",
      "喷泉和滑板公园，孩子们穿着齐备在方寸之地尽情嬉戏。大人们在一边围坐聊天。何必匆匆？坐下来享受此刻",
      "2020-08-21"
    ],
    [
      "assest/poem/guTi/x7.png",
      "初九临高",
      "登高，远眺",
      "天气难得的清凉，登上山峰，看着天空的浮云，和山脚下人们欢乐的打着高尔夫。一记完美的挥杆，草泥四溅，白色的小球向远处飞去",
      "2020-08-17"
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return PoemMode(
        backImg: "assest/background/back13.png",
        contents: contents,
        tiJi: "行，万里路。观，千世景",
        title: "绘行");
  }
}
