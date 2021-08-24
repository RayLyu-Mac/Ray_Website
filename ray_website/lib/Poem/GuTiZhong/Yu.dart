import 'package:flutter/material.dart';
import 'package:ray_website/Poem/PoemMode.dart';

class Yu extends StatefulWidget {
  Yu({Key? key}) : super(key: key);

  @override
  _YuState createState() => _YuState();
}

class _YuState extends State<Yu> {
  List<List> contents = [
    [
      "assest/poem/guTi/y1.png",
      "霁",
      "雨后的夏日，秀叶承晶露",
      "初夏的日子，燥热开始一点点蔓延。一场阵雨不期而至，浇灭了这大地上燃烧的焦躁。雨后，雨雾还未来得及散去，天地万物还是懵懵懂懂的样子。",
      "2020-06-07"
    ],
    [
      "assest/poem/guTi/y2.png",
      "仲夏喜雨",
      "怒雷，骤雨和仲夏",
      "到了一年中最热的几日，暑气的气浪在大街小巷席卷。突然天渐渐暗了下来，巨大的雨滴没有一丝提防的从半空中砸下来，随着的是响彻云霄的闷雷和撕破天空的白刃。盛夏的雨是激烈的也是短暂的",
      "2020-06-11"
    ],
    [
      "assest/poem/guTi/y3.png",
      "七月廿九沐林",
      "在森林前的长凳上静观雨珠从房梁一滴滴落下",
      "走着走着这天就就开始漏了起来，雨丝开始淅淅沥沥的落了下来。于是便到屋檐下找了张长椅，把自行车放到一边，取下了耳机，静静地听着这天地之间的交响曲",
      "2020-08-18"
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return PoemMode(
        backImg: "assest/background/back12.png",
        contents: contents,
        tiJi: "雨，总是不期而至。但，又不会突然",
        title: "描雨");
  }
}
