import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ray_website/PhoneAppD/Feature/AppTools.dart';
import 'package:ray_website/backgroundPic.dart';
import 'package:ray_website/Button.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text("Feature"),
      ),
      body: backGroundPic(
          child: Column(
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
                    width: _screenWidth / 12,
                  ),
                  Container(
                    height: _screenH / 1.5,
                    width: _screenWidth / 4,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assest/Phone/cover.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20),
                        border:
                            Border.all(width: 7, color: Colors.grey.shade300)),
                  ),
                  Column(
                    children: [
                      Button(
                          buttonIcon: FontAwesomeIcons.tools,
                          pageTo: AppTool(),
                          title: "App Tools"),
                      Button(
                          buttonIcon: FontAwesomeIcons.skull,
                          pageTo: AppTool(),
                          title: "App Safety Guidence"),
                      Button(
                          buttonIcon: Icons.stairs,
                          pageTo: AppTool(),
                          title: "Guide Mode"),
                      Button(
                          buttonIcon: FontAwesomeIcons.microscope,
                          pageTo: AppTool(),
                          title: "Equipment Managment"),
                      Button(
                          buttonIcon: FontAwesomeIcons.info,
                          pageTo: AppTool(),
                          title: "Other Tools"),
                    ],
                  )
                ],
              )
            ],
          ),
          pic: "assest/background/back8.png"),
    );
  }
}
