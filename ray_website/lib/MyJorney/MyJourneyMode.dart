import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class JourneyMode extends StatefulWidget {
  JourneyMode({Key? key}) : super(key: key);

  @override
  _JourneyModeState createState() => _JourneyModeState();
}

class _JourneyModeState extends State<JourneyMode> {
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
        body: Container(
      width: _screenWidth,
      height: _screenH * 1.3,
      decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.6), BlendMode.dstATop),
              image: AssetImage("assest/Personal Pic/1.png"),
              fit: BoxFit.cover)),
      child: Center(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(color: Colors.grey.shade100, width: 5))),
              child: Text(
                "May 2018",
                style: TextStyle(
                  fontSize: _screenH / 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: "coms",
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    ));
  }
}
