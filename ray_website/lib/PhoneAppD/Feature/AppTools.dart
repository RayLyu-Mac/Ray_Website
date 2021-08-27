import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ray_website/backgroundPic.dart';
import 'package:ray_website/Button.dart';
import 'package:ray_website/CAD/CADDetail.dart';

class AppTool extends StatefulWidget {
  AppTool({Key? key}) : super(key: key);

  @override
  _AppToolState createState() => _AppToolState();
}

class _AppToolState extends State<AppTool> {
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
    List<List> con = [
      [
        "assest/App/t2.png",
        "Hardness Conversion Sheet",
        "Quick check for hardness test value, convert the experimental value to MPa",
        FontAwesomeIcons.exchangeAlt,
        Colors.blueGrey.shade300,
      ],
      [
        "assest/App/t3.png",
        "Phase Diagram Check",
        "Quick check for several phase diagram used most frequently in material eng, knowing the phase change after heat treatment",
        FontAwesomeIcons.projectDiagram,
        Colors.redAccent.shade100
      ],
      [
        "assest/App/t3.png",
        "Stats Tool",
        "Several useful tool can be used in statistics",
        FontAwesomeIcons.calculator,
        Colors.greenAccent
      ]
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("App Tools"),
      ),
      body: backGroundPic(
          transp: 0.45,
          child: Column(
            children: [
              SizedBox(
                height: _screenH / 15,
              ),
              Text(
                "Matls Eng Tool Box",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: _screenH / 12,
                    fontFamily: "bank"),
              ),
              SizedBox(
                height: _screenH / 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: _screenH / 1.6,
                    width: _screenWidth / 4.2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assest/App/t1.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20),
                        border:
                            Border.all(width: 7, color: Colors.grey.shade300)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      for (var i = 0; i < con.length; i++)
                        Button(
                            buttonIcon: con[i][3],
                            titleColor: con[i][4],
                            pageTo: cadMode(
                                fit: true,
                                content: con[i][2],
                                date: "2021 Summer",
                                showImg: con[i][0],
                                title: con[i][1]),
                            title: con[i][1])
                    ],
                  )
                ],
              )
            ],
          ),
          pic: "assest/background/back19.png"),
    );
  }
}
