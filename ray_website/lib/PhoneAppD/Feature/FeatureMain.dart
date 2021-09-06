import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ray_website/PhoneAppD/Feature/AppTools.dart';
import 'package:ray_website/backgroundPic.dart';
import 'package:ray_website/Button.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'GuideMode.dart';
import 'EquipmentM.dart';
import 'Safety.dart';
import 'OtherTool.dart';
import 'Floation.dart';

class FeaturePhone extends StatefulWidget {
  FeaturePhone({Key? key}) : super(key: key);

  @override
  _FeaturePhoneState createState() => _FeaturePhoneState();
}

class _FeaturePhoneState extends State<FeaturePhone> {
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
    List<List> Buttons = [
      ["App Tools", AppTool(), Colors.redAccent, FontAwesomeIcons.tools],
      [
        "App Safety Guidence",
        AppSafety(),
        Colors.amber,
        FontAwesomeIcons.skull
      ],
      [
        "Equipment Managment",
        AppEquipMan(),
        Colors.lightGreenAccent.shade400,
        FontAwesomeIcons.microscope
      ],
      [
        "Guidence Mode",
        GuideMode(),
        Colors.lightBlueAccent,
        FontAwesomeIcons.map
      ],
      [
        "Other Tools",
        OtherTool(),
        Colors.pinkAccent,
        FontAwesomeIcons.infoCircle
      ],
      [
        "Floation Panel",
        FloationPanel(),
        Colors.purpleAccent,
        FontAwesomeIcons.expandAlt
      ]
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Feature"),
      ),
      body: backGroundPic(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: AnimationConfiguration.toStaggeredList(
            duration: const Duration(milliseconds: 705),
            childAnimationBuilder: (widget) => SlideAnimation(
              child: FadeInAnimation(
                child: widget,
              ),
              verticalOffset: 250,
            ),
            children: [
              SizedBox(
                height: _screenH / 25,
              ),
              Text(
                "Features of the App",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: _screenH / 12,
                  fontWeight: FontWeight.bold,
                  fontFamily: "sw",
                ),
              ),
              SizedBox(
                height: _screenH / 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: _screenWidth / 10,
                  ),
                  Container(
                    height: _screenH / 1.6,
                    width: _screenWidth / 4.2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assest/Phone/cover.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20),
                        border:
                            Border.all(width: 7, color: Colors.grey.shade300)),
                  ),
                  SizedBox(
                    width: _screenWidth / 6,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      for (var j = 0; j < Buttons.length; j++)
                        Button(
                          buttonIcon: Buttons[j][3],
                          pageTo: Buttons[j][1],
                          title: Buttons[j][0],
                          titleColor: Buttons[j][2],
                        )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        pic: "assest/background/back8.png",
        transp: 0.45,
      ),
    );
  }
}
