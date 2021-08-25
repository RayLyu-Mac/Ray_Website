import 'package:flutter/material.dart';
import 'package:ray_website/Poem/PoemMode.dart';

class Zaji extends StatefulWidget {
  Zaji({Key? key}) : super(key: key);

  @override
  _ZajiState createState() => _ZajiState();
}

class _ZajiState extends State<Zaji> {
  List<List> contents = [
    ["assest/poem/guTi/o1.png", "流体力学", "杂记", "生活是多彩的，遂记下其美好", "2020 Summer"],
    ["assest/poem/guTi/o2.png", "夕餐", "杂记", "生活是多彩的，遂记下其美好", "2020 Summer"],
    ["assest/poem/guTi/o3.png", "小院春", "杂记", "生活是多彩的，遂记下其美好", "2020 Summer"],
    ["assest/poem/guTi/o4.png", "檐下燕", "杂记", "生活是多彩的，遂记下其美好", "2020 Summer"],
    ["assest/poem/guTi/o5.png", "离巢", "杂记", "生活是多彩的，遂记下其美好", "2020 Summer"],
    ["assest/poem/guTi/o6.png", "独坐长草坡", "杂记", "生活是多彩的，遂记下其美好", "2020 Summer"],
    ["assest/poem/guTi/o7.png", "迷路", "杂记", "生活是多彩的，遂记下其美好", "2020 Summer"],
    [
      "assest/poem/guTi/o8.png",
      "Classic 2MT3",
      "杂记",
      "生活是多彩的，遂记下其美好",
      "2020 Summer"
    ],
    ["assest/poem/guTi/o9.png", "夏日终曲", "杂记", "生活是多彩的，遂记下其美好", "2020 Summer"],
    ["assest/poem/guTi/o10.png", "鸥城", "杂记", "生活是多彩的，遂记下其美好", "2020 Summer"],
    ["assest/poem/guTi/o11.png", "躁", "杂记", "生活是多彩的，遂记下其美好", "2020 Summer"],
    ["assest/poem/guTi/o12.png", "处暑", "杂记", "生活是多彩的，遂记下其美好", "2020 Summer"],
  ];

  @override
  Widget build(BuildContext context) {
    return PoemMode(
        backImg: "assest/background/back10.png",
        contents: contents,
        tiJi: "生活是多彩的，也是值得纪念的",
        title: "杂记");
  }
}
