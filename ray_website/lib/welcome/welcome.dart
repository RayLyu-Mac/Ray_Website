import 'package:flutter/material.dart';

class welcome extends StatefulWidget {
  welcome({Key? key}) : super(key: key);

  @override
  _welcomeState createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  double _screenWidth = 0;
  double _screenH = 0;
  int fontC = 600;
  String fontF = "show";
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
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
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.8), BlendMode.dstATop),
                        image: AssetImage("assest/personal.jpg"),
                        fit: BoxFit.cover)),
              )),
          Positioned(
              top: _screenH / 25,
              left: _screenWidth / 1.7,
              child: Container(
                constraints: BoxConstraints.expand(
                    width: _screenWidth / 2.6, height: _screenH / 1.07),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: _screenH / 30),
                      Text(
                        "         Bio M edical Eng",
                        style: TextStyle(
                            fontFamily: fontF,
                            color: Colors.grey[fontC],
                            fontSize: _screenH / 21,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "    Phone A pp Developer",
                        style: TextStyle(
                            fontFamily: fontF,
                            color: Colors.grey[fontC],
                            fontSize: _screenH / 21,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "   Da T a Analyst",
                        style: TextStyle(
                            fontFamily: fontF,
                            color: Colors.grey[fontC],
                            fontSize: _screenH / 21,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Gam E Designer",
                        style: TextStyle(
                            fontFamily: fontF,
                            color: Colors.grey[fontC],
                            fontSize: _screenH / 21,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "    GuitaR Player",
                        style: TextStyle(
                            fontFamily: fontF,
                            color: Colors.grey[fontC],
                            fontSize: _screenH / 21,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "InternatIonal Student ",
                        style: TextStyle(
                            fontFamily: fontF,
                            color: Colors.grey[fontC],
                            fontSize: _screenH / 21,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "                    C A D Modeler ",
                        style: TextStyle(
                            fontFamily: fontF,
                            color: Colors.grey[fontC],
                            fontSize: _screenH / 21,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "            L eader",
                        style: TextStyle(
                            fontFamily: fontF,
                            color: Colors.grey[fontC],
                            fontSize: _screenH / 21,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: _screenH / 30),
                      Text(
                        "        En E rgtic    ",
                        style: TextStyle(
                            fontFamily: fontF,
                            color: Colors.white,
                            fontSize: _screenH / 21,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Visio N er          ",
                        style: TextStyle(
                            fontFamily: fontF,
                            color: Colors.white,
                            fontSize: _screenH / 21,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "  Photo G rapher    ",
                        style: TextStyle(
                            fontFamily: fontF,
                            color: Colors.white,
                            fontSize: _screenH / 21,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Creat I ve               ",
                        style: TextStyle(
                            fontFamily: fontF,
                            color: Colors.white,
                            fontSize: _screenH / 21,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "                     N ovel             ",
                        style: TextStyle(
                            fontFamily: fontF,
                            color: Colors.white,
                            fontSize: _screenH / 21,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "      Exp E rience    ",
                        style: TextStyle(
                            fontFamily: fontF,
                            color: Colors.white,
                            fontSize: _screenH / 21,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "McMast E r                     ",
                        style: TextStyle(
                            fontFamily: fontF,
                            color: Colors.white,
                            fontSize: _screenH / 21,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Teache R                        ",
                        style: TextStyle(
                            fontFamily: fontF,
                            color: Colors.white,
                            fontSize: _screenH / 21,
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
              ))
        ],
      )),
    );
  }
}
