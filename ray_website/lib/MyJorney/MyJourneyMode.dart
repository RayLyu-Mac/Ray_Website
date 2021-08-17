import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class JourneyMode extends StatefulWidget {
  JourneyMode(
      {@required this.content,
      @required this.date,
      @required this.showImg,
      @required this.title,
      Key? key})
      : super(key: key);
  final String? content;
  final String? date;
  final String? title;
  final String? showImg;

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
        body: Center(
      child: Container(
        width: _screenWidth,
        height: _screenH * 1.1,
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.9), BlendMode.dstATop),
                image: AssetImage(widget.showImg!),
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
                height: _screenH / 20,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.grey.shade100, width: 5))),
                child: Text(
                  widget.date!,
                  style: TextStyle(
                    fontSize: _screenH / 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade500,
                    fontFamily: "coms",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: _screenH / 1.95,
              ),
              Container(
                height: _screenH / 3.5,
                width: _screenWidth / 1.35,
                padding: EdgeInsets.fromLTRB(
                  _screenWidth / 20,
                  _screenH / 40,
                  _screenWidth / 20,
                  _screenH / 40,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey.shade50.withOpacity(0.8),
                  gradient: new LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.grey.shade200,
                        Colors.grey.shade50,
                      ]),
                ),
                child: SingleChildScrollView(
                    child: Column(children: [
                  Text(
                    widget.title!,
                    style: TextStyle(
                      fontSize: _screenH / 17,
                      fontWeight: FontWeight.bold,
                      fontFamily: "yuan",
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    child: Text(
                      widget.content!,
                      style: TextStyle(
                          fontSize: _screenH / 31,
                          fontWeight: FontWeight.bold,
                          fontFamily: "sw"),
                      textAlign: TextAlign.center,
                    ),
                  )
                ])),
              )
            ],
          ),
        )),
      ),
    ));
  }
}
