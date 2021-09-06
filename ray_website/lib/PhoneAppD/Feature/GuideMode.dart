import 'Mode.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GuideMode extends StatefulWidget {
  GuideMode({Key? key}) : super(key: key);

  @override
  _GuideModeState createState() => _GuideModeState();
}

class _GuideModeState extends State<GuideMode> {
  @override
  Widget build(BuildContext context) {
    List<List> con = [
      [
        "assest/App/G1.png",
        "Guide: Layout Overview",
        "After you entering the app, you shall see this page. Currently, the app only have the layout for the JHE right wing, by clicking the button you can see the layout for each floor",
        FontAwesomeIcons.mapMarker,
        Colors.amber.shade300,
      ],
      [
        "assest/App/G2.png",
        "Guide: Room Layout",
        "After entering the floor you interested, you can see the room layout of the floor, by clicking the tab to find out more about this room, (The rrom tab in darker shade means no information avaiable yet)",
        FontAwesomeIcons.mapMarked,
        Colors.amberAccent.shade200,
      ],
      [
        "assest/App/G3.png",
        "Guide: Safety Equipment Check I",
        "By clicking the exchange tab on the right top corner, you should see the safety equipment layout in this floor. Main safety equipment include in this app are: Fire extinguisher, chemical shower/eye washer and emergency kit",
        FontAwesomeIcons.fireExtinguisher,
        Colors.red.shade200,
      ],
      [
        "assest/App/G4.png",
        "Guide: Safety Equipment Check II",
        "By clicking the safety equipment you are interested you can find more information about it and by further clicking see those in the room, you can see the approximate location of the equipment inside the room",
        FontAwesomeIcons.fireExtinguisher,
        Colors.red.shade200,
      ],
    ];
    return AppMode(
        appTitle: "Guide Mode",
        backImg: "assest/background/back21.png",
        con: con,
        title: "Guide mode inside the App",
        themePic: "assest/App/G2.png");
  }
}
