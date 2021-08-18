import 'package:flutter/material.dart';
import 'package:ray_website/MyJorney/MyJorneyMain.dart';
import 'package:ray_website/Barriage/b.dart';
import 'package:ray_website/Barriage/douyu.dart';
import 'dart:async';
import 'dart:math';
import 'package:ray_website/Album/main.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sprung/sprung.dart';
import 'hoverText.dart';
import 'package:ray_website/CAD/CADCover.dart';

class welcome extends StatefulWidget {
  welcome({Key? key}) : super(key: key);

  @override
  _welcomeState createState() => _welcomeState();
}

//Reference: https://juejin.cn/post/6844904126589960205
class _welcomeState extends State<welcome> {
  ScrollController sc = ScrollController();
  int speedFactor = 18;
  double _screenWidth = 0;
  double _screenH = 0;
  int fontC = 600;
  double fontSize = 22.8;
  String fontF = "show";

  int mills = 1200;
  int showCount = 8;
  var _barrageKey = GlobalKey<BarrageState>();
  List<String> com = [
    "学材料的搞那么多数据分析作甚",
    "学材料的热动力学不学学好搞歪门邪道",
    "学材料的搞什么App",
    "别忘了你TM是个学材料的",
    "Phase Diagram 会画了吗？Mechanical Test会做了吗？？",
    "晶体结构记住了吗？FCC/BCC/HCP哪个更坚固？？",
    "铁碳一共有几种形态？Alpha Phase是什么结构？？",
    "科技树点歪了！到时候没公司要你",
    "浪子回头吧"
  ];
  List<String> fontBase = ["coms", "show", "regular"];
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    int mills = 500;
    int showCount = 6;

    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                constraints: BoxConstraints.expand(
                    width: _screenWidth, height: _screenH),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.9), BlendMode.dstATop),
                        image: AssetImage("assest/personal.jpg"),
                        fit: BoxFit.cover)),
              )),
          Positioned(
              top: _screenH / 20,
              left: _screenWidth / 20,
              height: _screenH / 1.1,
              width: _screenWidth / 2.3,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          duration: const Duration(milliseconds: 500),
                          child: MyJourny(),
                          type: PageTransitionType.rightToLeft));
                },
              )),
          Positioned(
            top: _screenH / 8,
            left: _screenWidth / 4.5,
            child: Column(
              children: [
                Text(
                  "Greetings",
                  style: TextStyle(
                      fontFamily: "coms",
                      fontSize: _screenH / 6,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: _screenH / 20,
                ),
                Text("- I'm Ray Lyu -",
                    style: TextStyle(
                        color: Colors.grey[100],
                        fontSize: _screenH / 12,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: _screenH / 4.8,
                ),
                Text("Get to know me \nas -->",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: fontF,
                        color: Colors.white,
                        fontSize: _screenH / 15,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Positioned(
              top: _screenH / 30,
              left: _screenWidth / 1.63,
              child: Container(
                constraints: BoxConstraints.expand(
                    width: _screenWidth / 2.7, height: _screenH / 1.07),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: _screenH / 40),
                      Text(
                        "            Bio  M  ed Engineer",
                        style: TextStyle(
                            fontFamily: fontF,
                            color: Colors.grey[fontC],
                            fontSize: _screenH / fontSize,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "         Phone  A  pp Developer",
                        style: TextStyle(
                            fontFamily: fontF,
                            color: Colors.grey[fontC],
                            fontSize: _screenH / fontSize,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "         Da  T  a Analyst",
                        style: TextStyle(
                            fontFamily: fontF,
                            color: Colors.grey[fontC],
                            fontSize: _screenH / fontSize,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "   Gam  E  Designer",
                        style: TextStyle(
                            fontFamily: fontF,
                            color: Colors.grey[fontC],
                            fontSize: _screenH / fontSize,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Guita  R  Player     ",
                        style: TextStyle(
                            fontFamily: fontF,
                            color: Colors.grey[fontC],
                            fontSize: _screenH / fontSize,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        " Internat  I  onal Student",
                        style: TextStyle(
                            fontFamily: fontF,
                            color: Colors.grey[fontC],
                            fontSize: _screenH / fontSize,
                            fontWeight: FontWeight.w400),
                      ),
                      hoverTextMode(
                          pageTo: CADCover(),
                          font: fontF,
                          fontsize: fontSize,
                          title: "               C  A  D Modeler "),
                      Text(
                        "        L  eader",
                        style: TextStyle(
                            fontFamily: fontF,
                            color: Colors.grey[fontC],
                            fontSize: _screenH / fontSize,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: _screenH / 40),
                      Text(
                        "   En  E  rgetic   ",
                        style: TextStyle(
                            fontFamily: fontF,
                            color: Colors.white,
                            fontSize: _screenH / fontSize,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Visio  N  er                ",
                        style: TextStyle(
                            fontFamily: fontF,
                            color: Colors.white,
                            fontSize: _screenH / fontSize,
                            fontWeight: FontWeight.w400),
                      ),
                      hoverTextMode(
                          pageTo: album(),
                          font: fontF,
                          fontsize: fontSize,
                          title: "Photo  G  rapher       "),
                      Text(
                        "Creat  I  ve                  ",
                        style: TextStyle(
                            fontFamily: fontF,
                            color: Colors.white,
                            fontSize: _screenH / fontSize,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Challe  n  ger                  ",
                        style: TextStyle(
                            fontFamily: fontF,
                            color: Colors.white,
                            fontSize: _screenH / fontSize,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "     Res  E  archer    ",
                        style: TextStyle(
                            fontFamily: fontF,
                            color: Colors.white,
                            fontSize: _screenH / fontSize,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "McMast  E  r Student   ",
                        style: TextStyle(
                            fontFamily: fontF,
                            color: Colors.white,
                            fontSize: _screenH / fontSize,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Teache  R                             ",
                        style: TextStyle(
                            fontFamily: fontF,
                            color: Colors.white,
                            fontSize: _screenH / fontSize,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.white.withAlpha(80),
                    borderRadius: BorderRadius.circular(16.0),
                    border: Border.all(
                      width: 2,
                      color: Colors.white.withOpacity(0.4),
                    )),
              )),
          Positioned(
              left: 0,
              top: 0,
              child: Container(
                  height: _screenH,
                  width: _screenWidth,
                  child: Barrage(
                    key: _barrageKey,
                    showCount: showCount,
                  )))
        ],
      )),
    );
  }
}
