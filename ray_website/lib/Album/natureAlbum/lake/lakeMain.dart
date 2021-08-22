import 'package:flutter/material.dart';
import 'package:ray_website/Album/natureAlbum/fourSeasonMode.dart';

class lakeMain extends StatefulWidget {
  lakeMain({Key? key}) : super(key: key);

  @override
  _lakeMainState createState() => _lakeMainState();
}

class _lakeMainState extends State<lakeMain> {
  List<List> cont = [
    [
      "assest/nature/lake/spring.png",
      "Spring",
    ],
    [
      "assest/nature/lake/Summer.png",
      "Summer",
    ],
    [
      "assest/nature/lake/Fall.png",
      "Fall",
    ],
    [
      "assest/nature/lake/winter.png",
      "Winter",
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return fourSeason(
        backImg: "assest/background/back2.png",
        content: "阔镜风止凝仙息，四季澹澹清客心",
        pics: cont,
        title: "McMaster Lake");
  }
}
