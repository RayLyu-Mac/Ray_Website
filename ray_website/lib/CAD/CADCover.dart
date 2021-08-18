import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter/material.dart';

class CADCover extends StatefulWidget {
  CADCover({Key? key}) : super(key: key);

  @override
  _CADCoverState createState() => _CADCoverState();
}

class _CADCoverState extends State<CADCover> {
  double _screenWidth = 0;
  double _screenH = 0;
  List<String> coverImgs = [
    "assest/3Dprint/cover/1.png",
    "assest/3Dprint/cover/2.png",
    "assest/3Dprint/cover/3.png",
    "assest/3Dprint/cover/4.png",
    "assest/3Dprint/cover/5.png",
  ];
  List<List> comment = [
    ["Fun", "Create your own toys, reviewing the fun back childhood"],
    [
      "Creation",
      "Let your creative mind fly, design the coolest stuff in the world!"
    ],
    [
      "Invention",
      "Forget the stuff has been created, you can invent the new stuff that haven't been existed"
    ],
    ["Posses", "See the cool design but can't afford? Use CAD and print it!"],
    [
      "Practice",
      "Train your skills on technical design and prepare yourself for the challenge tomorrow!"
    ]
  ];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImageSlideshow(
          isLoop: true,
          width: double.infinity,
          height: _screenH,
          indicatorColor: Colors.blue,
          initialPage: 0,
          autoPlayInterval: 3000,
          children: [
            for (var j = 0; j < coverImgs.length; j++)
              Container(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: _screenH / 15,
                      ),
                      Text("CAD is " + comment[j][0],
                          style: TextStyle(
                            fontFamily: "coms",
                            fontSize: _screenH / 15,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: _screenH / 25,
                      ),
                      Text(comment[j][1],
                          style: TextStyle(
                            fontFamily: "coms",
                            fontSize: _screenH / 20,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.blueGrey.withOpacity(0.5),
                            BlendMode.dstATop),
                        image: AssetImage(coverImgs[j]),
                        fit: BoxFit.fitWidth)),
              )
          ]),
    );
  }
}
