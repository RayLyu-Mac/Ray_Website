import 'package:flutter/material.dart';
import 'package:ray_website/Album/natureAlbum/fourSeasonMode.dart';

class JHEMain extends StatefulWidget {
  JHEMain({Key? key}) : super(key: key);

  @override
  _JHEMainState createState() => _JHEMainState();
}

class _JHEMainState extends State<JHEMain> {
  List<List> cont = [
    ["assest/nature/jhe/s1.png", "Spring"],
    ["assest/nature/jhe/s2.png", "Summer"],
    ["assest/nature/jhe/s3.png", "Fall"],
    ["assest/nature/jhe/s4.png", "Winter"],
  ];
  @override
  Widget build(BuildContext context) {
    return fourSeason(
        backImg: "assest/background/back3.png",
        content:
            "John Hodgins Engineering Building\nThe home for McMaster Engineer",
        pics: cont,
        title: "JHE Four Seasons");
  }
}
