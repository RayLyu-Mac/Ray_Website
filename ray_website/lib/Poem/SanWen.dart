import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ray_website/Teacher/style.dart';
import 'package:ray_website/backgroundPic.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:ray_website/Album/mode.dart';
import 'package:ray_website/CAD/CADDetail.dart';

class SanWen extends StatefulWidget {
  SanWen({Key? key}) : super(key: key);

  @override
  _SanWenState createState() => _SanWenState();
}

class _SanWenState extends State<SanWen> {
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
        "assest/poem/1.png",
        "临高",
        "深邃的天与远处的城",
        "这是他独自一人登上城市南边的山峰，他仰望天空，望着那蓝得深邃又不可触摸的天际，仿佛置身于海底。当他将视线移开，仿佛周边的世界已变成海底的世界一般，远处的城市淹没在泪水中，孤独与破碎...",
        "2020-05-03"
      ],
      [
        "assest/poem/2.png",
        "愿听雪落",
        "五月的飞雪会有什么样的故事呢",
        "忽如一夜春风来，院子里的樱花树仿佛重焕生机，过了一会才被冰凉的雪花给惊醒。于是他迫不及待的走出房门去拥抱这个白色的世界...",
        "2020-05-15"
      ],
      [
        "assest/poem/3.png",
        "烹",
        "一块硕大的猪大骨在他的手下会变成什么样呢",
        "炖汤说不上什么有什么特别的手法，但合适的料理搭配以及时机都会让一锅汤发生质的变化。让我们看看他的作品如何吧！",
        "2020-05-19"
      ],
      [
        "assest/poem/4.png",
        "雨的乐章",
        "让雨落于檐之上，心之间",
        "雨对于这个地方可视为久违的朋友。盛夏的酷暑让人们焦躁难耐，而雨的来临会抚平心头卷起的页脚...",
        "2020-07-08"
      ],
      [
        "assest/poem/5.png",
        "雾里看花",
        "于山崖之间，看浓雾中的世界",
        "他来到山间，本想期待一个清澈的日出，没奈何浓雾的不请自来给太阳蒙上了厚厚的面纱...",
        "2020-08-07"
      ]
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "散文诗",
          style: TextStyle(
              fontSize: _screenH / 12,
              fontWeight: FontWeight.bold,
              fontFamily: "sw"),
        ),
        backgroundColor: Colors.lime,
      ),
      body: backGroundPic(
          transp: 0.5,
          child: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: AnimationConfiguration.toStaggeredList(
                duration: const Duration(milliseconds: 705),
                childAnimationBuilder: (widget) => SlideAnimation(
                      child: FadeInAnimation(
                        child: widget,
                      ),
                      verticalOffset: 220,
                    ),
                children: [
                  SizedBox(
                    height: _screenH / 12,
                  ),
                  Text(
                    "随着作者的文笔，享受生活中每一个美好的瞬间",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: _screenH / 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: "nan"),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (var i = 0; i < contents.length; i++)
                          photoMode(
                              img: contents[i][0],
                              title: contents[i][1],
                              content: contents[i][2],
                              pageTo: cadMode(
                                  content: contents[i][3],
                                  date: contents[i][4],
                                  showImg: contents[i][0],
                                  title: contents[i][1]))
                      ],
                    ),
                  )
                ]),
          )),
          pic: "assest/background/back7.png"),
    );
  }
}
