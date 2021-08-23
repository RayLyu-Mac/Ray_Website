import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'GuTiZhong/huangHun.dart';
import 'package:ray_website/CAD/singleCAD.dart';

class GuTi extends StatefulWidget {
  GuTi({Key? key}) : super(key: key);

  @override
  _GuTiState createState() => _GuTiState();
}

class _GuTiState extends State<GuTi> {
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
            children: List.generate(1, (index) {
              return AnimationConfiguration.staggeredGrid(
                  position: index,
                  duration: const Duration(milliseconds: 800),
                  columnCount: 3,
                  child: ScaleAnimation(
                    child: FadeInAnimation(
                      child: singleCAD(
                        showPic: "assest/background/back9.png",
                        content: "夕阳欲颓，万物将息。感受着黑夜来临前的娴静，不亦是种乐趣",
                        title: "黄昏",
                        fontC: Colors.amber,
                        pageTo: huangHun(),
                      ),
                    ),
                  ));
            })));
  }
}
