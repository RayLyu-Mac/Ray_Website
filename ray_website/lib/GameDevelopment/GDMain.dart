import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter/material.dart';
import 'package:ray_website/backgroundPic.dart';

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
        body: SingleChildScrollView(
          child: backGroundPic(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("  How government policy affect socia-economic status  ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontFamily: "sw",
                        fontSize: _screenH / 13,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: _screenH / 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: _screenWidth / 25,
                      ),
                      Container(
                        width: _screenWidth / 2.5,
                        height: _screenH / 1.3,
                        child: ImageSlideshow(
                            isLoop: true,
                            indicatorColor: Colors.blue,
                            initialPage: 0,
                            autoPlayInterval: 3700,
                            children: [
                              for (var i = 0; i < pics.length; i++)
                                Image(image: AssetImage(pics[i]))
                            ]),
                      ),
                      SizedBox(
                        width: _screenWidth / 25,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: _screenWidth / 30,
                            vertical: _screenH / 35),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            border: Border.all(
                                width: 8, color: Colors.grey.shade600),
                            borderRadius: BorderRadius.circular(25)),
                        height: _screenH / 1.3,
                        width: _screenWidth / 2,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text("Purpose",
                                  style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontFamily: "bank",
                                    fontSize: _screenH / 16,
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
                                    fontSize: _screenH / 16,
                                    fontWeight: FontWeight.bold,
                                  )),
                              // https://www.youtube.com/watch?v=84njPYepKIU&t=7s
                              SizedBox(
                                height: _screenH / 25,
                              ),
                              Text(
                                  "This simulation is insprired by Greg Winther, the graph code comes from his YouTube Video: https://www.youtube.com/watch?v=84njPYepKIU&t=7s"),
                              SizedBox(
                                height: _screenH / 15,
                              ),
                              Text("Platform & Resources",
                                  style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontFamily: "bank",
                                    fontSize: _screenH / 16,
                                    fontWeight: FontWeight.bold,
                                  )),
                              SizedBox(
                                height: _screenH / 25,
                              ),
                              Text(
                                  "This simulation is written using python and pygame library. \nThe github link is: https://github.com/RayLyu-Mac/COVID-19-SImulation\n View Report of the result on: \nhttps://github.com/RayLyu-Mac/COVID-19-SImulation/blob/main/IBEHs%204C03%20DOE.pdf"),
                              SizedBox(
                                height: _screenH / 15,
                              ),
                              Text("Partial Result",
                                  style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontFamily: "bank",
                                    fontSize: _screenH / 16,
                                    fontWeight: FontWeight.bold,
                                  )),
                              SizedBox(
                                height: _screenH / 25,
                              ),

                              Container(
                                width: _screenWidth / 2.3,
                                height: _screenH / 2.5,
                                child: Image(
                                    image: AssetImage(
                                        "assest/GameDesign/GD5.png")),
                              ),
                              SizedBox(
                                height: _screenH / 15,
                              ),
                              Container(
                                width: _screenWidth / 2.3,
                                height: _screenH / 2.5,
                                child: Image(
                                    image: AssetImage(
                                        "assest/GameDesign/GD6.png")),
                              ),

                              SizedBox(
                                height: _screenH / 15,
                              ),
                              Text("Conclusion",
                                  style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontFamily: "bank",
                                    fontSize: _screenH / 16,
                                    fontWeight: FontWeight.bold,
                                  )),
                              SizedBox(
                                height: _screenH / 25,
                              ),
                              Text(
                                  "In this experiment, the relationship between regional GDP and the factors; population density & policy level, is investigated. Based on the result, when the regional population density is lower than 1353 ppl/km2, the GDP will increase as the population density increases and the GDP will increase as the policy level increases. Followed by this tendency, the maximum GDP is found when population density equals to 1353 ppl/km2 and policy level is restricted to 0.9. In following experiments, additional factors should be considered to provide a more realistic model and improve the generalizability of the results. For example, socioeconomic status could be incorporated into model to test how all three factors affect the regional GDP. "),
                              SizedBox(
                                height: _screenH / 15,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              pic: "assest/background/back25.png"),
        ));
  }
}
