import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter/material.dart';

class GameDesign extends StatefulWidget {
  GameDesign({Key? key}) : super(key: key);

  @override
  _GameDesignState createState() => _GameDesignState();
}

class _GameDesignState extends State<GameDesign> {
  List<String> pics = [
    "assest/GameDesign/GD1.png",
    "assest/GameDesign/GD2.png",
    "assest/GameDesign/GD3.png",
    "assest/GameDesign/GD4.png",
  ];
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
        title: Text("Game Design: COVID Simulation"),
        backgroundColor: Colors.grey.shade500,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
              "COVID-19 Simulation: How government policy affect socia-economic status",
              style: TextStyle(
                color: Colors.grey.shade800,
                fontFamily: "sw",
                fontSize: _screenH / 8,
                fontWeight: FontWeight.bold,
              )),
          Row(
            children: [
              Container(
                width: _screenWidth / 3.5,
                height: _screenH / 5,
                child: ImageSlideshow(children: [
                  for (var i = 0; i < pics.length; i++)
                    Image(image: AssetImage(pics[i]))
                ]),
              ),
              Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text("Purpose",
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontFamily: "bank",
                            fontSize: _screenH / 13,
                            fontWeight: FontWeight.bold,
                          )),
                      // https://www.youtube.com/watch?v=84njPYepKIU&t=7s
                      SizedBox(
                        height: _screenH / 25,
                      ),
                      Text(
                          "The purpose of this simulation including following aspect: By creating a collision model to learn how COVID is spread in a closed region. Learning how a people behavior will affect the virus spread by introducing different avatar and giving them different behavior properties. Finally, by learning how different government policy affect the socio-econmoic status"),
                      SizedBox(
                        height: _screenH / 15,
                      ),
                      Text("Reference",
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontFamily: "bank",
                            fontSize: _screenH / 13,
                            fontWeight: FontWeight.bold,
                          )),
                      // https://www.youtube.com/watch?v=84njPYepKIU&t=7s
                      SizedBox(
                        height: _screenH / 25,
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
