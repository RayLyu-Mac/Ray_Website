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
              top: _screenH / 20,
              left: _screenWidth / 1.5,
              child: Container(
                constraints: BoxConstraints.expand(
                    width: _screenWidth / 4, height: _screenH / 1.2),
                child: Column(
                  children: [
                    Text(
                      "     Bio M edical Eng",
                      style: TextStyle(
                          color: Colors.grey[fontC],
                          fontSize: _screenH / 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "    Phone A pp Developer",
                      style: TextStyle(
                          color: Colors.grey[fontC],
                          fontSize: _screenH / 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "   Da T a Analyst",
                      style: TextStyle(
                          color: Colors.grey[fontC],
                          fontSize: _screenH / 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Gam E Designer",
                      style: TextStyle(
                          color: Colors.grey[fontC],
                          fontSize: _screenH / 30,
                          fontWeight: FontWeight.bold),
                    )
                  ],
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
