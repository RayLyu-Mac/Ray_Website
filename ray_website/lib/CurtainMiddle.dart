import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sprung/sprung.dart';
import 'package:page_transition/page_transition.dart';

class CurtainMiddle extends StatefulWidget {
  CurtainMiddle(
      {@required this.showPic,
      @required this.content,
      @required this.title,
      @required this.fontC,
      @required this.pageTo,
      @optionalTypeArgs this.height,
      @optionalTypeArgs this.width,
      @optionalTypeArgs this.fontf,
      Key? key})
      : super(key: key);
  final String? showPic;
  final Color? fontC;
  final String? content;
  final String? title;
  final String? fontf;
  final Widget? pageTo;
  final double? height;
  final double? width;
  @override
  _CurtainMiddleState createState() => _CurtainMiddleState();
}

class _CurtainMiddleState extends State<CurtainMiddle> {
  double _screenWidth = 0;
  double _screenH = 0;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  bool _hovering = false;
  void _mouseEnter(bool hover) {
    setState(() {
      _hovering = hover;
    });
  }

  @override
  Widget build(BuildContext context) {
    final nonHoverTransform = Matrix4.identity()
      ..translate(-(_screenWidth / 2.8), 0, 0);
    final hoverTransform = Matrix4.identity()..translate(0, 0, 0);

    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Sprung.overDamped,
        transform: _hovering ? hoverTransform : nonHoverTransform,
        child: Container(
            width: widget.width,
            height: widget.height,
            decoration: BoxDecoration(
                border: Border.all(width: 10, color: Colors.grey.shade200),
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.white.withOpacity(0.4), BlendMode.dstATop),
                    image: AssetImage(widget.showPic!),
                    fit: BoxFit.cover)),
            padding: EdgeInsets.symmetric(
                vertical: _screenH / 14, horizontal: _screenWidth / 26),
            child: _hovering
                ? SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          widget.title!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: _screenH / 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: widget.fontf ?? "bank"),
                        ),
                        SizedBox(
                          height: _screenH / 20,
                        ),
                        Text(
                          widget.content!,
                          style: TextStyle(
                            fontSize: _screenH / 25,
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: _screenH / 20,
                        ),
                      ],
                    ),
                  )
                : Container(
                    alignment: Alignment.centerRight,
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: Text(
                        widget.title!,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "nan",
                            fontSize: _screenH / 15),
                      ),
                    ),
                  )),
      ),
    );
  }
}
