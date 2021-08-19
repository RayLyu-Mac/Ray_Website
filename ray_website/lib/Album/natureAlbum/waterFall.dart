import 'package:flutter/material.dart';
import 'singlePicMode.dart';
import 'WordMode.dart';

class tiffiny extends StatefulWidget {
  tiffiny({Key? key}) : super(key: key);

  @override
  _tiffinyState createState() => _tiffinyState();
}

class _tiffinyState extends State<tiffiny> {
  List<List> pics = [
    ["assest/nature/waterFall/spring.png", "Spring"],
    ["assest/nature/waterFall/summer.png", "Summer"],
    ["assest/nature/waterFall/fall.png", "Fall"],
    ["assest/nature/waterFall/winter.png", "Winter"],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          for (var i = 0; i < pics.length; i++)
            WaterFallMode(
              img: pics[i][0],
              seas: pics[i][1],
            ),
          wordMode()
        ],
      ),
    );
  }
}
