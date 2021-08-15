import 'MyJourneyMode.dart';
import 'package:flutter/material.dart';

class MyJourny extends StatefulWidget {
  MyJourny({Key? key}) : super(key: key);

  @override
  _MyJournyState createState() => _MyJournyState();
}

class _MyJournyState extends State<MyJourny> {
  List<String> showI = [
    "assest/Personal Pic/1.01.png",
    "assest/Personal Pic/1.png",
    "assest/Personal Pic/1.02.png",
    "assest/Personal Pic/1.03.png",
    "assest/Personal Pic/2.png",
    "assest/Personal Pic/3.png",
    "assest/Personal Pic/4.png",
    "assest/Personal Pic/5.png",
    "assest/Personal Pic/6.png",
    "assest/Personal Pic/7.png",
    "assest/Personal Pic/8.png",
    "assest/Personal Pic/9.png",
    "assest/Personal Pic/10.png",
    "assest/Personal Pic/11.png",
    "assest/Personal Pic/12.png",
    "assest/Personal Pic/13.png",
    "assest/Personal Pic/14.png",
    "assest/Personal Pic/15.png",
    "assest/Personal Pic/16.png",
    "assest/Personal Pic/17.png",
    "assest/Personal Pic/18.png",
    "assest/Personal Pic/19.png",
  ];
  List<String> dates = ["Mar 2018", "May 2018", "June 2018", ""];
  List<String> titles = ["高中•戏剧"];
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: controller,
        children: [],
      ),
    );
  }
}
