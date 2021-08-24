import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'GuTiZhong/huangHun.dart';
import 'package:ray_website/CAD/singleCAD.dart';
import 'GuTiZhong/liMing.dart';

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
    ]
  ];
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
    return Scaffold(
        appBar: AppBar(
          title: Text("古体诗合集"),
          backgroundColor: Colors.amber,
        ),
        body: GridView.count(
            crossAxisCount: 3,
            children: List.generate(2, (index) {
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
