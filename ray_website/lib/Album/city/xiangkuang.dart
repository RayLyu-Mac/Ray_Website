import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class xiangKuang extends StatefulWidget {
  xiangKuang({Key? key}) : super(key: key);

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
        height: _screenH / 1.37,
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
                "金华•冷夜",
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
                child: Image(image: AssetImage("assest/citypic/jinhua/1.png")),
              ),
              SizedBox(
                height: _screenH / 25,
              ),
              Container(
                child: Text(
                  "清冷的江面上，映着对岸的繁华",
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
