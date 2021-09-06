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
              ))
        ],
      ),
    );
  }
}
