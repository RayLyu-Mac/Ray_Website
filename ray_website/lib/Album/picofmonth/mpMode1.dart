import 'package:flutter/material.dart';
import 'package:ray_website/backgroundNetworkPic.dart';
import 'package:lottie/lottie.dart';

class mpMode1 extends StatefulWidget {
  final String? secTitle, secContent, decoPic, lottie;
  mpMode1(
      {@required this.decoPic,
      @required this.secContent,
      @required this.secTitle,
      @required this.lottie,
      Key? key})
      : super(key: key);

  @override
  State<mpMode1> createState() => _mpMode1State();
}

class _mpMode1State extends State<mpMode1> {
  double _screenWidth = 0, _screenH = 0, contentSize = 2;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: backGroundPic(
          child: Stack(children: [
            Positioned(
                top: _screenH / 4.5,
                left: -_screenWidth / 20,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: _screenWidth / 15),
                  child: Column(
                    children: [
                      SizedBox(
                        height: _screenH / 6,
                      ),
                      Text(
                        widget.secTitle!,
                        style: TextStyle(
                            fontSize: _screenH / 16,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            fontFamily: "growth"),
                      ),
                      SizedBox(
                        height: _screenH / 15,
                      ),
                      Text(
                        widget.secContent!,
                        style: TextStyle(
                            fontSize: _screenH / 22,
                            fontWeight: FontWeight.bold),
                      ),
                      LottieBuilder.network(
                        widget.lottie!,
                        height: _screenH / contentSize / 2,
                      )
                    ],
                  ),
                  width: _screenWidth / contentSize,
                  height: _screenWidth / contentSize,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(
                          _screenWidth / contentSize / 2)),
                ))
          ]),
          pic: widget.decoPic),
    );
  }
}
