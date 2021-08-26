import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ray_website/backgroundPic.dart';
import 'About.dart';
import 'package:ray_website/Button.dart';
import 'Feature/FeatureMain.dart';

class PhoneAppDeveloper extends StatefulWidget {
  PhoneAppDeveloper({Key? key}) : super(key: key);

  @override
  _PhoneAppDeveloperState createState() => _PhoneAppDeveloperState();
}

class _PhoneAppDeveloperState extends State<PhoneAppDeveloper> {
  double _screenWidth = 0;
  double _screenH = 0;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  bool _hovering = false;
  void _mouseEnter(bool hover) {
    setState(() {
      _hovering = hover;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("As a phone developer"),
      ),
      body: backGroundPic(
        child: Column(
          children: [
            SizedBox(
              height: _screenH / 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: _screenWidth / 8,
                ),
                Button(buttonIcon: Icons.work, pageTo: About(), title: "Team"),
                Button(
                    buttonIcon: Icons.content_copy_outlined,
                    pageTo: FeaturePhone(),
                    title: "Features")
              ],
            ),
            SizedBox(
              height: _screenH / 4.5,
            ),
            Text(
              "Managment Maintaince  Accessbility",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "bank",
                  fontSize: _screenH / 13,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: _screenH / 20,
            ),
            Text(
              "< Phone App for Malts Student in McMaster >",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: _screenH / 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
        pic: "assest/background/back16.png",
        transp: 0.45,
      ),
    );
  }
}
