import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ray_website/backgroundPic.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:ray_website/Album/mode.dart';
import 'package:ray_website/CAD/CADDetail.dart';

class PoemMode extends StatefulWidget {
  PoemMode(
      {@required this.backImg,
      @required this.contents,
      @required this.tiJi,
      @required this.title,
      Key? key})
      : super(key: key);
  final List<List>? contents;
  final String? backImg;
  final String? title;
  final String? tiJi;

  @override
  _PoemModeState createState() => _PoemModeState();
}

class _PoemModeState extends State<PoemMode> {
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
        centerTitle: true,
        title: Text(
          widget.title!,
          style: TextStyle(
              fontSize: _screenH / 12,
              fontWeight: FontWeight.bold,
              fontFamily: "sw"),
        ),
        backgroundColor: Colors.lime,
      ),
      body: backGroundPic(
          transp: 0.5,
          child: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
                    height: _screenH / 12,
                  ),
                  Text(
                    widget.tiJi!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: _screenH / 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: "nan"),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (var i = 0; i < widget.contents!.length; i++)
                          photoMode(
                              img: widget.contents![i][0],
                              title: widget.contents![i][1],
                              content: widget.contents![i][2],
                              pageTo: cadMode(
                                  content: widget.contents![i][3],
                                  date: widget.contents![i][4],
                                  showImg: widget.contents![i][0],
                                  title: widget.contents![i][1]))
                      ],
                    ),
                  )
                ]),
          )),
          pic: widget.backImg!),
    );
  }
}
