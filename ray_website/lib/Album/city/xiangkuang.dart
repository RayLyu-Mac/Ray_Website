import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class xiangKuang extends StatefulWidget {
  xiangKuang(
      {@required this.content,
      @required this.showPic,
      @required this.title,
      Key? key})
      : super(key: key);
  final String? title;
  final String? content;
  final String? showPic;

  @override
  _xiangKuangState createState() => _xiangKuangState();
}

class _xiangKuangState extends State<xiangKuang> {
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
    return Container(
      constraints: BoxConstraints.expand(
        width: _screenWidth / 1.35,
        height: _screenH / 1.3,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
            image: AssetImage("assest/back.png"),
            fit: BoxFit.cover),
      ),
      child: SingleChildScrollView(
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
              Text(
                widget.title!,
                style: TextStyle(fontFamily: "nan", fontSize: _screenH / 14),
              ),
              SizedBox(
                height: _screenH / 25,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 12.0,
                        spreadRadius: 15.0),
                  ],
                  gradient: new LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.grey.shade600,
                        Colors.grey.shade50,
                      ]),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image(image: AssetImage(widget.showPic!)),
              ),
              SizedBox(
                height: _screenH / 25,
              ),
              Container(
                child: Text(
                  widget.content!,
                  style: TextStyle(fontFamily: "sw", fontSize: _screenH / 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
