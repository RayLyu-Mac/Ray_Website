import 'package:flutter/material.dart';

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
      ["树影夕阳", ""]
    ];
    return Container(
      child: null,
    );
  }
}
