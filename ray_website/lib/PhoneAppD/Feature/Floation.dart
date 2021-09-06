import 'Mode.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FloationPanel extends StatefulWidget {
  FloationPanel({Key? key}) : super(key: key);

  @override
  _FloationPanelState createState() => _FloationPanelState();
}

class _FloationPanelState extends State<FloationPanel> {
  @override
  Widget build(BuildContext context) {
    List<List> con = [
      [
        "assest/App/F2.png",
        "Floation Panel: Introduction",
        "Floation Panel exists on layout page/floor page and equipment page, expand the floation panel by click on the black plus circle",
        FontAwesomeIcons.expand,
        Colors.lime,
      ],
      [
        "assest/App/F3.png",
        "Function: Quick Search",
        "First function for the floation panel is quick search, by type in the stuff you are interested, you can find the pages about those. All items are color coded, ",
        FontAwesomeIcons.expand,
        Colors.redAccent,
      ],
      [
        "assest/App/F4.png",
        "Function: QR code scanner",
        "The second function is QR code scanner, by clcikng this tab, the camera will be initiatied and QR scanner will be ready. You can find the QR code on equipment and room in JHE, scan them it will take you to their page",
        FontAwesomeIcons.qrcode,
        Colors.purple,
      ],
      [
        "assest/App/F5.png",
        "Function: Note System",
        "This tab is avaible on equipment page, by clicking the tab you will be directed to note system, by clciking the plus sign on the top you can write note after the experiment. The note will be stored locally",
        FontAwesomeIcons.notesMedical,
        Colors.purple,
      ],
    ];
    return AppMode(
        appTitle: "Floation Panel",
        backImg: "assest/background/back30.png",
        con: con,
        title: "App Floation Panel Tools",
        themePic: "assest/App/F1.png");
  }
}
