import 'package:flutter/material.dart';
import 'package:ray_website/backgroundPic.dart';
import 'About.dart';
import 'package:ray_website/Button.dart';

class PhoneAppDeveloper extends StatefulWidget {
  PhoneAppDeveloper({Key? key}) : super(key: key);

  @override
  _PhoneAppDeveloperState createState() => _PhoneAppDeveloperState();
}

class _PhoneAppDeveloperState extends State<PhoneAppDeveloper> {
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
            Row(
              children: [],
            )
          ],
        ),
        pic: "assest/background/back17.png",
        transp: 0.3,
      ),
    );
  }
}
