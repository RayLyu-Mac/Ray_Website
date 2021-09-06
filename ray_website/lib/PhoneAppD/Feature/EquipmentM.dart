import 'Mode.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppEquipMan extends StatefulWidget {
  AppEquipMan({Key? key}) : super(key: key);

  @override
  _AppEquipManState createState() => _AppEquipManState();
}

class _AppEquipManState extends State<AppEquipMan> {
  @override
  Widget build(BuildContext context) {
    List<List> con = [
      [
        "assest/App/E9.png",
        "Find the equipment: Side Menu",
        "You can find the list of equipment by opening the side menu (Either through the app bar or right slide) and tab on equipment section under menu",
        FontAwesomeIcons.search,
        Colors.amber
      ],
      [
        [
          "assest/App/E8.png",
          "Find the Equipment: Room Layout",
          "You can find the equipment information in room layout, when you click a room and enter the layout in the room, you can find the information of the equipment by clicking the picture of the equipment",
          FontAwesomeIcons.restroom,
          Colors.lightGreenAccent
        ],
        [
          "assest/App/E1.png",
          "Equipment Section ",
          "You can find all equipment avaiable in MSE here, By clicking the equipment you are interested you can find the location and Specs for the equipment",
          FontAwesomeIcons.info,
          Colors.blueAccent
        ],
        [
          "assest/App/E4.png",
          "Equipment Main Page",
          "You can see all the information we have for the equipment, this page can be reach by QR code scanning and find equipment on the app",
          FontAwesomeIcons.chessBoard,
          Colors.red.shade50
        ],
        [
          "assest/App/E6.png",
          "Equipment Main Page: Instruction I",
          "You can view the instruction of the particular equipment by clicking the instruction tab on the page, before you getting into the actual instruction you need to read some safety note about the equipment",
          FontAwesomeIcons.chessBoard,
          Colors.redAccent.shade200
        ],
        [
          "assest/App/E6.png",
          "Equipment Main Page: Instruction II",
          "You can view the instruction of the particular equipment by clicking the instruction tab on the page, after review the safety note, you shall see a list of video descriping each steps, by opening the side menu you can go to any step you want to check on",
          FontAwesomeIcons.chessBoard,
          Colors.redAccent.shade400
        ],
      ]
    ];
    return AppMode(
        appTitle: "Equipment Managment",
        backImg: "assest/background/back34.png",
        con: con,
        title: "Malts Eng Equipment",
        themePic: "assest/App/E4.png");
  }
}
