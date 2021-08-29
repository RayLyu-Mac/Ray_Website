import 'Mode.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppSafety extends StatefulWidget {
  AppSafety({Key? key}) : super(key: key);

  @override
  _AppSafetyState createState() => _AppSafetyState();
}

class _AppSafetyState extends State<AppSafety> {
  @override
  Widget build(BuildContext context) {
    List<List> con = [
      [
        "assest/App/s1.png",
        "MSDS Chemical Sheet",
        "Quick check for Avaiable chemical in MSE department, knowing their dangerous level and locaiton",
        FontAwesomeIcons.flask,
        Colors.blueGrey.shade300,
      ],
      [
        "assest/App/s2.png",
        "Emergency Chemical Wash",
        "Quick check for when should you use either of safety equipment and their location in MSE department",
        FontAwesomeIcons.shower,
        Colors.orange.shade200
      ],
      [
        "assest/App/s3.png",
        "Fire Safety",
        "Qucik check for McMaster/ MSE department fire protocol, location of fire extinguisher and instruction for fire extinguisher",
        FontAwesomeIcons.fireExtinguisher,
        Colors.red
      ],
      [
        "assest/App/s4.png",
        "Acid Safety",
        "Check the acid may used in experiment, including their chemical/physical properties, harm to human body and PPE need to wear when perform the experiment",
        FontAwesomeIcons.skullCrossbones,
        Colors.yellow.shade500
      ],
      [
        "assest/App/s5.png",
        "WHIMS symbol",
        "Quick check for meaning of each symbol and required PPE need to wear when perform chemical with that label",
        FontAwesomeIcons.sign,
        Colors.lightBlue.shade300
      ],
    ];
    return AppMode(
        appTitle: "App Safety Guidence",
        backImg: "assest/background/back23.png",
        con: con,
        title: "Matls Eng Safety Guidence",
        themePic: "assest/App/s6.png");
  }
}
