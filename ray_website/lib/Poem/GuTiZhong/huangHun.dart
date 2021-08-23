import 'package:flutter/material.dart';
import 'package:ray_website/Poem/PoemMode.dart';

class huangHun extends StatefulWidget {
  huangHun({Key? key}) : super(key: key);

  @override
  _huangHunState createState() => _huangHunState();
}

class _huangHunState extends State<huangHun> {
  double _screenWidth = 0;
  double _screenH = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    List<List> contents = [
      [
        "assest/poem/guTi/m1.png",
        "邑暮",
        "小镇的黄昏，又会是怎样的一幅风景",
        "斜卧于草坡之上，远观天边夕阳欲颓。风紧催人行，远处群山金粉，近处行人车马匆匆。",
        "2020-05-07"
      ],
      [
        "assest/poem/guTi/m2.png",
        "垂暮",
        "残阳浴血，长虹似剑",
        "如烈火般的夕阳，点燃了远处的群峰。如利剑一般的长云，撕裂了通红的天空。在这苍茫之间，他仿佛如一位经历百战的勇士，不敌岁月的洗礼，望着自己的垂暮。",
        "2020-05-09"
      ],
      [
        "assest/poem/guTi/m3.png",
        "树影夕阳",
        "背靠擎苍，遥眺夕阳",
        "晚饭后，漫步在家附近的公园里。靠在挺拔的巨树下，看着人们在这夕阳下的草场上尽情欢愉",
        "2020-05-11"
      ],
      [
        "assest/poem/guTi/m4.png",
        "夏夜",
        "让夜带走夏日的焦躁，还之以虫鸣于微风",
        "今年的夏日格外的热,不过到了夜晚一切又变得平静了下来。他靠着门外扶手的栏杆，抚琴，闭目，享受着此刻的清净",
        "2020-06-02"
      ]
    ];
    return PoemMode(
        backImg: "assest/background/back9.png",
        contents: contents,
        tiJi: "夕阳欲颓，万物将息。感受着黑夜来临前的娴静，不亦是种乐趣",
        title: "黄昏");
  }
}
