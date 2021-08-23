import 'package:flutter/material.dart';
import 'package:ray_website/CurtainLeft.dart';
import 'package:ray_website/backgroundPic.dart';
import 'package:ray_website/Teacher/style.dart';
import 'SanWen.dart';
import 'package:ray_website/curtainRight.dart';
import 'Guti.dart';

class PoemMain extends StatefulWidget {
  PoemMain({Key? key}) : super(key: key);

  @override
  _PoemMainState createState() => _PoemMainState();
}

class _PoemMainState extends State<PoemMain> {
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
        title: title(content: "As a Poet", fontSize: _screenH / 12),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent.shade100,
      ),
      body: SingleChildScrollView(
        child: backGroundPic(
            transp: 0.4,
            child: Column(
              children: [
                SizedBox(
                  height: _screenH / 20,
                ),
                title(
                    content: "Poem is a life attitude",
                    fontSize: _screenH / 10),
                content(
                  contents:
                      "                                                                   《南曲北调》-霜樱居士",
                  fontSize: _screenH / 18,
                  fontf: "yuan",
                ),
                SizedBox(
                  height: _screenH / 5,
                ),
                Row(
                  children: [
                    CurtainLeft(
                      showPic: "assest/background/back7.png",
                      content:
                          "又称现代诗，没有固定的诗体，兼有诗与散文特点的一种现代抒情文学体裁。一般基于社会和人生背景的感触，体裁丰富。在这部诗集里收录了作者5篇散文诗（百度百科）",
                      title: "散文诗",
                      fontC: Colors.limeAccent,
                      pageTo: SanWen(),
                      width: _screenWidth / 2.1,
                      height: _screenH / 1.55,
                      fontf: "yuan",
                    ),
                    CurtainRight(
                      showPic: "assest/background/back8.png",
                      content: "根据诗句的字数，分为四言，五言，七言不等。这篇诗集中收录了作者35篇古体诗。",
                      title: "古体诗",
                      fontC: Colors.blueAccent,
                      pageTo: GuTi(),
                      width: _screenWidth / 2.1,
                      height: _screenH / 1.55,
                      fontf: "yuan",
                    )
                  ],
                )
              ],
            ),
            pic: "assest/background/back5.png"),
      ),
    );
  }
}
