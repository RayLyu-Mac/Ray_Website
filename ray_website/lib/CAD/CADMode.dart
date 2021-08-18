import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'singleCAD.dart';

class CADMode extends StatefulWidget {
  CADMode({Key? key}) : super(key: key);

  @override
  _CADModeState createState() => _CADModeState();
}

class _CADModeState extends State<CADMode> {
  List<List> cadPics = [
    [
      "assest/3Dprint/1.png",
      "MultiHolder",
      "Multiholder designed to customized personal need for organizing the tools on table",
      Colors.greenAccent,
      "Jul 2020"
    ],
    [
      "assest/3Dprint/2.png",
      "Flower Pot",
      "Designated design, multigeometrical, holder-friendly flower pot. Hold soil better, and drainage system designed",
      Colors.brown.shade600,
      "Aug 2020"
    ],
    [
      "assest/3Dprint/3.png",
      "Fish Boat",
      "Fish boat design based on China fishing boat, combined with other details.",
      Colors.lightBlue.shade400,
      "Aug 2020"
    ],
    [
      "assest/3Dprint/4.png",
      "Light House",
      "Light House Design based on the light house in China South Sea, detail designed on the top and the picture",
      Colors.blue,
      "Aug 2020"
    ],
    [
      "assest/3Dprint/5.png",
      "DLQ 33",
      "DLQ 33 base gun designed by COD mobile, 2D gun model design with sophisicated surface detail, good for desk decoration",
      Colors.deepOrange,
      "Sept 2020"
    ],
    [
      "assest/3Dprint/6.png",
      "HBRa3",
      "HBRa3 base gun designed by COD mobile, 2D gun model design with sophisicated surface detail, good for desk decoration",
      Colors.deepOrange,
      "Sept 2020"
    ],
    [
      "assest/3Dprint/7.png",
      "Princess Knight",
      "Princess Knight from hollow knight, the guider and the opponenet for the hollow knight",
      Colors.red,
      "Sept 2020"
    ],
    [
      "assest/3Dprint/8.png",
      "BBT character",
      "Battle Block Theotre character, running",
      Colors.indigoAccent,
      "Sept 2020"
    ],
    [
      "assest/3Dprint/9.png",
      "M4 Back Scratch",
      "M4 Back Scratch epic design by COD Mobile  2D gun model design with sophisicated surface detail, good for desk decoration",
      Colors.purpleAccent,
      "Oct 2020"
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
      crossAxisCount: 3,
      children: List.generate(9, (index) {
        return AnimationConfiguration.staggeredGrid(
            position: index,
            duration: const Duration(milliseconds: 1005),
            columnCount: 3,
            child: ScaleAnimation(
                child: FadeInAnimation(
                    child: singleCAD(
              showPic: cadPics[index][0],
              title: cadPics[index][1],
              content: cadPics[index][2],
              fontC: cadPics[index][3],
              date: cadPics[index][4],
            ))));
      }),
    ));
  }
}
