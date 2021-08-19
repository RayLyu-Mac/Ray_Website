import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ray_website/CAD/CADDetail.dart';
import 'CADPage.dart';

class CADCover extends StatefulWidget {
  CADCover({Key? key}) : super(key: key);

  @override
  _CADCoverState createState() => _CADCoverState();
}

class _CADCoverState extends State<CADCover> {
  double _screenWidth = 0;
  double _screenH = 0;
  List<String> coverImgs = [
    "assest/3Dprint/cover/1.1.png",
    "assest/3Dprint/cover/1.2.png",
    "assest/3Dprint/cover/1.3.png",
    "assest/3Dprint/cover/1.4.png",
    "assest/3Dprint/cover/1.5.png",
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
      appBar: AppBar(
        title: Text("3D printing show case"),
        backgroundColor: Colors.grey.shade500,
      ),
      body: ImageSlideshow(
          isLoop: true,
          width: double.infinity,
          height: _screenH,
          indicatorColor: Colors.blue,
          initialPage: 0,
          autoPlayInterval: 3700,
          children: [
            for (var j = 0; j < coverImgs.length; j++)
              Container(
                padding: EdgeInsets.symmetric(horizontal: _screenWidth / 15),
                child: Stack(
                  children: [
                    Positioned(
                      left: _screenWidth / 35,
                      top: _screenH / 10,
                      child: Text("3D Printing Gallery",
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontFamily: "bank",
                            fontSize: _screenH / 8,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Positioned(
                      left: _screenWidth / 35,
                      top: _screenH / 2.5,
                      child: Text("CAD is " + comment[j][0],
                          style: TextStyle(
                            fontFamily: "coms",
                            fontSize: _screenH / 13,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Positioned(
                        left: _screenWidth / 35,
                        top: _screenH / 2,
                        child: Text(comment[j][1],
                            style: TextStyle(
                              fontFamily: "coms",
                              fontSize: _screenH / 18,
                              fontWeight: FontWeight.bold,
                            ))),
                    Positioned(
                      left: _screenWidth / 1.45,
                      top: _screenH / 1.6,
                      child: Container(
                          height: _screenH / 8.5,
                          width: _screenWidth / 6.5,
                          child: FloatingActionButton(
                              child: Icon(
                                Icons.forward,
                                size: _screenH / 12,
                              ),
                              backgroundColor: Colors.grey.shade600,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        duration:
                                            const Duration(milliseconds: 500),
                                        child: CADMode(),
                                        type: PageTransitionType.rightToLeft));
                              })),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.blueGrey.withOpacity(0.45),
                            BlendMode.dstATop),
                        image: AssetImage(coverImgs[j]),
                        fit: BoxFit.fitWidth)),
              )
          ]),
    );
  }
}
