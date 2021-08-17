import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ray_website/welcome/welcome.dart';

class mjCover extends StatefulWidget {
  mjCover({Key? key}) : super(key: key);

  @override
  _mjCoverState createState() => _mjCoverState();
}

class _mjCoverState extends State<mjCover> {
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
      height: _screenH * 1.1,
      decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.9), BlendMode.dstATop),
              image: AssetImage("assest/mj.jpg"),
              fit: BoxFit.cover)),
      child: Center(
          child: Column(
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
              height: _screenH / 3.5,
            ),
            Text(
              "My Journey",
              style: TextStyle(
                  fontSize: _screenH / 9,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade100,
                  fontFamily: "coms"),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: _screenH / 13,
            ),
            Text(
              "                 < 2018-2021 >",
              style: TextStyle(
                  fontSize: _screenH / 16,
                  color: Colors.grey.shade100,
                  fontWeight: FontWeight.bold,
                  fontFamily: "bank"),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: _screenH / 4,
            ),
            Row(
              children: [
                SizedBox(
                  width: _screenWidth / 15,
                ),
                FloatingActionButton(
                    backgroundColor: Colors.grey.withAlpha(85),
                    child: Icon(Icons.backspace_outlined),
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              duration: const Duration(milliseconds: 500),
                              child: welcome(),
                              type: PageTransitionType.rightToLeft));
                    }),
                Text(
                  "           旅程总有一日会达到终点，不必匆忙",
                  style: TextStyle(
                      fontSize: _screenH / 16,
                      color: Colors.grey.shade100,
                      fontWeight: FontWeight.bold,
                      fontFamily: "sw"),
                ),
              ],
            ),
            Icon(
              Icons.downhill_skiing_rounded,
              semanticLabel: "Lets Start!",
            ),
          ],
        ),
      )),
    ));
  }
}
