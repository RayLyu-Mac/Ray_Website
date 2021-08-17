import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:ray_website/MyJorney/MyJorneyMain.dart';
import 'package:ray_website/MyJorney/MyJourneyMode.dart';
import 'package:page_transition/page_transition.dart';

class CADMode extends StatefulWidget {
  CADMode({Key? key}) : super(key: key);

  @override
  _CADModeState createState() => _CADModeState();
}

class _CADModeState extends State<CADMode> {
  List<String> cadPics = [
    "assest/3Dprint/1.png",
    "assest/3Dprint/2.png",
    "assest/3Dprint/3.png",
    "assest/3Dprint/4.png",
    "assest/3Dprint/5.png",
    "assest/3Dprint/6.png",
    "assest/3Dprint/7.png",
    "assest/3Dprint/8.png",
    "assest/3Dprint/9.png",
  ];
  @override
  Widget build(BuildContext context) {
    bool moreInfo = false;
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
                    child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        duration: const Duration(milliseconds: 500),
                        child: JourneyMode(
                            content: "CAD is a style",
                            date: "May 2020",
                            showImg: cadPics[index],
                            title: "Gun Model"),
                        type: PageTransitionType.rightToLeft));
              },
              onHover: (hover) {
                if (hover) {
                  setState(() {
                    moreInfo = true;
                    print(moreInfo);
                  });
                } else {
                  setState(() {
                    moreInfo = false;
                  });
                }
              },
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.white.withOpacity(0.9), BlendMode.dstATop),
                        image: AssetImage(cadPics[index]),
                        fit: BoxFit.cover)),
                child: Text(moreInfo ? "Yes" : "No"),
              ),
            ))));
      }),
    ));
  }
}
