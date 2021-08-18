import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ray_website/fancyButton.dart';

class cadMode extends StatefulWidget {
  cadMode(
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
  _cadModeState createState() => _cadModeState();
}

class _cadModeState extends State<cadMode> {
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
      body: Row(
        children: [
          Container(
            width: _screenWidth / 1.4,
            height: _screenH * 1.1,
            decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.white.withOpacity(0.9), BlendMode.dstATop),
                    image: AssetImage(widget.showImg!),
                    fit: BoxFit.fitWidth)),
          ),
          Column(
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
                  width: _screenWidth / 3.5,
                  padding: EdgeInsets.fromLTRB(
                    _screenWidth / 40,
                    _screenH / 40,
                    _screenWidth / 40,
                    _screenH / 40,
                  ),
                  child: SingleChildScrollView(
                      child: Column(children: [
                    Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Colors.grey.shade100, width: 5))),
                        child: Row(
                          children: [
                            Text(
                              "Created on:\n" + widget.date!,
                              style: TextStyle(
                                fontSize: _screenH / 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade500,
                                fontFamily: "coms",
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              width: _screenWidth / 32,
                            ),
                            Icon(
                              FontAwesomeIcons.trophy,
                              size: _screenH / 18,
                            )
                          ],
                        )),
                    SizedBox(
                      height: _screenH / 15,
                    ),
                    Text(
                      widget.title!,
                      style: TextStyle(
                        fontSize: _screenH / 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: "yuan",
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: _screenH / 40,
                    ),
                    Container(
                      child: Text(
                        widget.content!,
                        style: TextStyle(
                            fontSize: _screenH / 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: "sw"),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ])),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
