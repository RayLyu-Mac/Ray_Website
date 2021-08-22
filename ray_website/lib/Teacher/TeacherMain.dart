import 'package:flutter/material.dart';
import 'style.dart';
import 'package:page_transition/page_transition.dart';
import 'Paragraph.dart';

class teacherMain extends StatefulWidget {
  teacherMain({Key? key}) : super(key: key);

  @override
  _teacherMainState createState() => _teacherMainState();
}

class _teacherMainState extends State<teacherMain> {
  List<String> bio = [
    "• 2018.5-2018.7: XinXin Education, Teacher/Class Manager            ",
    "• 2018.5-2018.7: Path Education, Class Manager                      ",
    "• 2019.7-2019.8: Path Education, Class Manager/Organizer            ",
    "• 2018.9-2020.1: McMaster, Let's Talk Science Volunteer             ",
    "• 2020.9-2021.4: McMaster, Teaching Assistant Phy 1D/E03            "
  ];
  double _screenWidth = 0;
  double _screenH = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title(content: "As a teacher", fontSize: _screenH / 17),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        height: _screenH * 1.1,
        width: _screenWidth,
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.4), BlendMode.dstATop),
                image: AssetImage("assest/back4.png"),
                fit: BoxFit.cover)),
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: _screenWidth / 15, vertical: _screenH / 20),
          padding: EdgeInsets.symmetric(
              horizontal: _screenWidth / 14, vertical: _screenH / 20),
          decoration: BoxDecoration(
              color: Colors.blueGrey.withAlpha(89),
              border: Border.all(width: 5, color: Colors.grey.shade100),
              borderRadius: BorderRadius.circular(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: _screenH / 25,
                ),
                title(content: "Teaching Profile", fontSize: _screenH / 12),
                SizedBox(
                  height: _screenH / 30,
                ),
                for (var j = 0; j < bio.length; j++)
                  content(contents: bio[j], fontSize: _screenH / 20),
                SizedBox(
                  height: _screenH / 15,
                ),
                FloatingActionButton(
                    child: Icon(
                      Icons.arrow_downward_rounded,
                      size: _screenH / 12,
                    ),
                    backgroundColor: Colors.grey.shade600,
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              duration: const Duration(milliseconds: 500),
                              child: Paragraph(),
                              type: PageTransitionType.rightToLeft));
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
