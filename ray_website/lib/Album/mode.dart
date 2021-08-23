import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:page_transition/page_transition.dart';

class photoMode extends StatefulWidget {
  photoMode(
      {this.content, this.img, this.title, @required this.pageTo, Key? key})
      : super(key: key);
  final String? title;
  final String? content;
  final String? img;
  final Widget? pageTo;
  @override
  _photoModeState createState() => _photoModeState();
}

class _photoModeState extends State<photoMode> {
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
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                duration: const Duration(milliseconds: 500),
                child: widget.pageTo!,
                type: PageTransitionType.rightToLeft));
      },
      child: Container(
        width: _screenWidth / 4.5,
        height: _screenH / 1.8,
        margin: EdgeInsets.fromLTRB(_screenWidth / 18, _screenH / 6.5,
            _screenWidth / 18, _screenH / 20),
        padding: EdgeInsets.symmetric(
            horizontal: _screenWidth / 40, vertical: _screenH / 30),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.5),
            border: Border.all(width: 10, color: Colors.grey.shade200),
            borderRadius: BorderRadius.circular(15)),
        child: SingleChildScrollView(
          child: Column(
            children: AnimationConfiguration.toStaggeredList(
                duration: const Duration(milliseconds: 705),
                childAnimationBuilder: (widget) => SlideAnimation(
                      child: FadeInAnimation(
                        child: widget,
                      ),
                      horizontalOffset: 220,
                    ),
                children: [
                  Container(
                    height: _screenH / 5.7,
                    width: _screenWidth / 4.8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        image: DecorationImage(
                            image: AssetImage(widget.img!), fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: _screenH / 65,
                  ),
                  Text(
                    widget.title!,
                    style: TextStyle(
                        fontSize: _screenH / 15,
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                        fontFamily: "coms"),
                  ),
                  SizedBox(
                    height: _screenH / 65,
                  ),
                  Container(
                    width: _screenWidth / 4.5,
                    child: Text(
                      widget.content!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: _screenH / 30,
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                          fontFamily: "yuan"),
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
