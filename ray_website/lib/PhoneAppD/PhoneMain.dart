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
              height: _screenH / 25,
            ),
            Row(
              children: [
                SizedBox(
                  width: _screenWidth / 8,
                ),
                Button(buttonIcon: Icons.work, pageTo: About(), title: "About")
              ],
            )
          ],
        ),
        pic: "assest/background/back16.png",
        transp: 0.45,
      ),
    );
  }
}
