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
        ]
      ]
    ];
    return Scaffold();
  }
}
