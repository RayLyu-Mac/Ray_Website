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
      "Jul 2020",
      "https://cults3d.com/en/3d-model/tool/multi-holder"
    ],
    [
      "assest/3Dprint/2.png",
      "Flower Pot",
      "Designated design, multigeometrical, holder-friendly flower pot. Hold soil better, and drainage system designed",
      Colors.brown.shade600,
      "Aug 2020",
      "https://cults3d.com/en/3d-model/tool/flowerpot-2-0"
    ],
    [
      "assest/3Dprint/3.png",
      "Fish Boat",
      "Fish boat design based on China fishing boat, combined with other details.",
      Colors.lightBlue.shade400,
      "Aug 2020",
      "https://cults3d.com/en/3d-model/art/fishing-boat-v2-0"
    ],
    [
      "assest/3Dprint/4.png",
      "Light House",
      "Light House Design based on the light house in China South Sea, detail designed on the top and the picture",
      Colors.blue,
      "Aug 2020",
      "https://cults3d.com/en/3d-model/architecture/lighthouse-rayrayray0495"
    ],
    [
      "assest/3Dprint/5.png",
      "DLQ 33",
      "DLQ 33 base gun designed by COD mobile, 2D gun model design with sophisicated surface detail, good for desk decoration",
      Colors.deepOrange,
      "Sept 2020",
      "https://cults3d.com/en/3d-model/art/hbra-3"
    ],
    [
      "assest/3Dprint/6.png",
      "HBRa3",
      "HBRa3 base gun designed by COD mobile, 2D gun model design with sophisicated surface detail, good for desk decoration",
      Colors.deepOrange,
      "Sept 2020",
      "https://cults3d.com/en/3d-model/art/hbra-3"
    ],
    [
      "assest/3Dprint/7.png",
      "Princess Knight",
      "Princess Knight from hollow knight, the guider and the opponenet for the hollow knight",
      Colors.red,
      "Sept 2020",
      "https://cults3d.com/en/3d-model/art/the-hollow-knight"
    ],
    [
      "assest/3Dprint/8.png",
      "BBT character",
      "Battle Block Theotre character, running",
      Colors.indigoAccent,
      "Sept 2020",
      "https://cults3d.com/en/3d-model/art/bbt-four-funny-horseman"
    ],
    [
      "assest/3Dprint/9.png",
      "M4 Back Scratch",
      "M4 Back Scratch epic design by COD Mobile  2D gun model design with sophisicated surface detail, good for desk decoration",
      Colors.purpleAccent,
      "Oct 2020",
      "https://cults3d.com/en/3d-model/art/m4-back-scatch"
    ],
    [
      "assest/3Dprint/10.png",
      "HBRa3-Mob Boss",
      "HBRa3 Mob Boss epic design by COD Mobile  2D gun model design with sophisicated surface detail, good for desk decoration",
      Colors.purpleAccent,
      "Oct 2020",
      "https://cults3d.com/en/3d-model/art/hbra3-mobboss"
    ],
    [
      "assest/3Dprint/11.png",
      "歼11-B",
      "歼11-B fighter designed by China air force, 3rd Gen fighter, 3D design. Nice for desk Decoration or key chain",
      Colors.lightBlueAccent.shade100,
      "Dec 2020",
      "https://cults3d.com/en/3d-model/art/11b-q"
    ],
    [
      "assest/3Dprint/12.png",
      "Desk Clip",
      "Customized desk clip designed to organize things like: glasses, headphone and phone. Can help to decrease the entropy of the room",
      Colors.lime.shade300,
      "Dec 2020",
      "https://cults3d.com/en/3d-model/fashion/decrease-entropy-in-your-room"
    ],
    [
      "assest/3Dprint/13.png",
      "B2 Bomber",
      "B2 bomber, the new generation of bomber in America, flat 3D design",
      Colors.black45,
      "Dec 2020",
      "https://cults3d.com/en/3d-model/art/b2-bomber"
    ],
    [
      "assest/3Dprint/14.png",
      "Su 47",
      "Su 47 fighter, one and only forward wing, amazing air-dynamic design. 3D outlook design nice for desk decoration",
      Colors.redAccent.shade100,
      "Nov 2020",
      "https://cults3d.com/en/3d-model/art/su-47"
    ],
    [
      "assest/3Dprint/15.png",
      "MiGe 710",
      "MiGe 710 fighter, designed by Soviet Union, 3D outlook design nice for desk decoration",
      Colors.blueGrey.shade300,
      "Jan 2021",
      "https://cults3d.com/en/3d-model/art/mige-701"
    ],
    [
      "assest/3Dprint/16.png",
      "Dark Tech_XPR50",
      "Dark Tech_XPR50 epic design by COD Mobile  2D gun model design with sophisicated surface detail, good for desk decoration",
      Colors.red.shade600,
      "Jan 2021",
      "https://cults3d.com/en/3d-model/art/cod-mobile-epic-sniper-bundle"
    ],
    [
      "assest/3Dprint/17.png",
      "BBT 4 hourseman",
      "Four character designed by battle block theatre. Aren't them cute!",
      Colors.lightBlue.shade50,
      "Jan 2021",
      "https://cults3d.com/en/3d-model/art/bbt-four-funny-horseman"
    ],
    [
      "assest/3Dprint/18.png",
      "HG-40 Geomoetry",
      "HG-40 Geometry epic design by COD Mobile  2D gun model design with sophisicated surface detail, good for desk decoration",
      Colors.purpleAccent,
      "Sept 2020",
      "https://cults3d.com/en/3d-model/art/hg40-gemometry"
    ],
    [
      "assest/3Dprint/19.png",
      "Man-O-War Cardinal",
      "MOW epic design by COD Mobile  2D gun model design with sophisicated surface detail, good for desk decoration",
      Colors.purpleAccent,
      "Nov 2020",
      "https://cults3d.com/en/3d-model/art/hbra3-mobboss"
    ],
    [
      "assest/3Dprint/20.png",
      "Y20",
      "Y20 transportation plane designed by China Air Force, 3D outlook design, nice desk decoration",
      Colors.redAccent,
      "Jan 2021",
      "https://cults3d.com/en/3d-model/art/y20-q"
    ],
    [
      "assest/3Dprint/21.png",
      "Mask Holder Ray Edition",
      "Customized mask holder, combined with fashion emoji, functionalized and user-friendly",
      Colors.grey.shade200,
      "Jan 2021"
          "https://cults3d.com/en/3d-model/tool/ray-mask-holder"
    ],
    [
      "assest/3Dprint/22.png",
      "M21-EBR Politicitan",
      "M21 EBR epic design by COD Mobile  2D gun model design with sophisicated surface detail, good for desk decoration",
      Colors.brown.shade300,
      "Oct 2020"
          "https://cults3d.com/en/3d-model/art/cod-mobile-epic-sniper-bundle"
    ],
    [
      "assest/3Dprint/23.png",
      "LK-24 Royal Crimison",
      "LK 24 epic design by COD Mobile  2D gun model design with sophisicated surface detail, good for desk decoration",
      Colors.orangeAccent.shade100,
      "Nov 2020",
      "https://cults3d.com/en/3d-model/art/m16-fubar"
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("3D printing work"),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: GridView.count(
          crossAxisCount: 3,
          children: List.generate(18, (index) {
            return AnimationConfiguration.staggeredGrid(
                position: index,
                duration: const Duration(milliseconds: 900),
                columnCount: 3,
                child: ScaleAnimation(
                    child: FadeInAnimation(
                        child: singleCAD(
                  showPic: cadPics[index][0],
                  title: cadPics[index][1],
                  content: cadPics[index][2],
                  fontC: cadPics[index][3],
                  date: cadPics[index][4],
                  url: cadPics[index][5],
                ))));
          }),
        ));
  }
}
